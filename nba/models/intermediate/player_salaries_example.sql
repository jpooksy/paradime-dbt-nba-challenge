WITH player_salaries AS (
    SELECT 
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
        TRANSLATE(REGEXP_REPLACE(LOWER(full_name), '[^a-zA-Z]', ''), 'ČĆĐŠŽčćđšž', 'CCDZZccdzz') AS cpi_regex_player_name
    FROM 
        {{ ref('source_common_player_info') }}
),
joined AS (
    SELECT 
        cpi.player_id, 
        cpi.full_name AS player_name, 
        ps.salary, 
        ps.season 
    FROM 
        player_salaries ps
    LEFT JOIN common_player_info cpi ON ps.player = cpi.cpi_regex_player_name
)
SELECT * FROM joined
