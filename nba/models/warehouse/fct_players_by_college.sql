-- Aggregate player game logs to identify players with more than 0 minutes played
WITH player_game_logs_agg AS (
    SELECT 
        player_id
    FROM
        {{ ref('player_game_logs_agg_example') }} 
    GROUP BY
        player_id
    HAVING
        SUM(mins_played) > 0
),

-- Join aggregated player logs with common player info to link each player to their school
player_school AS (
    SELECT 
        agg.player_id, 
        info.school
    FROM 
        {{ ref('source_common_player_info') }} info
    JOIN 
        player_game_logs_agg agg ON info.player_id = agg.player_id
),

-- Aggregate players by school to count the number of NBA players from each school
players_by_school AS (
    SELECT 
        school,
        COUNT(player_id) AS nba_players
    FROM
        player_school
    GROUP BY
        school
)

-- Select schools and their respective counts of NBA players, ordered by the count of NBA players
SELECT 
    school,
    nba_players
FROM
    players_by_school
ORDER BY
    nba_players DESC