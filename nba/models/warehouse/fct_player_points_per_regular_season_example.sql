WITH source AS (
    SELECT 
        player_id,
        player_name,
        season,
        points,
        game_type
    FROM
        {{ ref('player_game_logs_agg_example') }}
),

most_points_per_regular_season as (
    SELECT
        player_id,
        CONCAT(player_name, ' (', REPLACE(SUBSTRING(season, 3, 6), ' ', ''), ')') AS player_season,
        points
    FROM 
        source
    WHERE
        game_type = 'Regular Season'
    ORDER BY 
        points DESC
)

SELECT 
    *
FROM 
    most_points_per_regular_season