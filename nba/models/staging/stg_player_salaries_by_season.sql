WITH source AS (
    SELECT 
        *
    FROM 
        public.player_salaries_by_season
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