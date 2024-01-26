-- The initial Common Table Expression (CTE) aggregates player game logs. It identifies players who have played more than 0 minutes, essentially filtering out players who have no playing time recorded.
WITH player_game_logs_agg AS (
    SELECT 
        player_id  -- Selects the unique identifier for each player
    FROM
        {{ ref('player_game_logs_agg_example') }}  
    GROUP BY
        player_id  -- Groups the results by player ID to aggregate their data
    HAVING
        SUM(mins_played) > 0  -- Filters out any players who have not played any minutes
),

-- This CTE joins the aggregated player logs with common player info to associate each player with their school.
player_school AS (
    SELECT 
        agg.player_id,  -- Selects the player ID from the aggregated logs
        info.school  -- Selects the school from the player information
    FROM 
        {{ ref('source_common_player_info') }} info
    JOIN 
        player_game_logs_agg agg ON info.player_id = agg.player_id  -- Joins on player ID to match logs with player info
),

-- This CTE aggregates players by school to count the number of NBA players coming from each school.
players_by_school AS (
    SELECT 
        school, 
        COUNT(player_id) AS nba_players  -- Counts the number of players per school and labels this count as nba_players
    FROM
        player_school
    GROUP BY
        school  -- Groups the results by school to aggregate the count of players
)

-- The final SELECT statement queries from the players_by_school CTE.
SELECT 
    school,  
    nba_players 
FROM
    players_by_school
ORDER BY
    nba_players DESC
