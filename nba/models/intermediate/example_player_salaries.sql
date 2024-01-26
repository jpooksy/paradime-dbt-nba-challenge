with player_salaries as (
    SELECT 
        -- Transform player's name to match the format used in common_player_info CTE
        TRANSLATE(REGEXP_REPLACE(LOWER(player), '[^a-zA-Z]', ''), 'ČĆĐŠŽčćđšž', 'CCDZZccdzz') AS player,
        salary, 
        rank,
        season
    FROM 
        {{ ref('source_player_salaries') }}
), 

common_player_info AS (
    SELECT 
        player_id,
        full_name, 
        -- Transform player's name to match the format used in player_salaries CTE
        TRANSLATE(REGEXP_REPLACE(LOWER(full_name), '[^a-zA-Z]', ''), 'ČĆĐŠŽčćđšž', 'CCDZZccdzz') AS cpi_regex_player_name
    FROM 
        {{ ref('source_common_player_info') }}
),

-- Join player_salaries with common_player_info using the player name...player_salaries doesn't have a unique identifier
joined AS (
    SELECT 
        cpi.player_id, -- Player's unique identifier
        cpi.full_name AS player_name, -- Player's full name
        ps.salary, -- Player's salary
        ps.season -- NBA season
    FROM 
        player_salaries ps
    LEFT JOIN common_player_info cpi 
    -- Join condition based on the adjusted player names
    ON ps.ps_regex_player_name = cpi.cpi_regex_player_name
)

-- Select all fields from the joined CTE
SELECT 
    * 
FROM 
    joined