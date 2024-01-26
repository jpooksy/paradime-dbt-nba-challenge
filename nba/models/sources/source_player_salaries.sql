WITH source AS (
    SELECT 
        *
    FROM 
        public.player_salaries
),

renamed AS (
    SELECT
        player,
        salary, 
        rank,
        year as season
    FROM
        source
)
SELECT
    *
FROM
    renamed