WITH source AS (
    SELECT 
        *
    FROM 
        public.player_salaries
),

renamed AS (
    SELECT
        player_id,
        player_name,
        salary, 
        rank,
        season
    FROM
        source
)
SELECT
    *
FROM
    renamed