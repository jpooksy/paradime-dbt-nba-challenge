with source as (
    select 
        *
    from 
        default.player_salaries
),

renamed AS (
    SELECT
        player,
        CAST(REPLACE(REPLACE(salary, '$', ''), ',', '') AS DECIMAL(10, 2)) AS salary, -- Adjusted to DECIMAL data type
        rank,
        year as season
    FROM
        source
)
SELECT
    *
FROM
    renamed
