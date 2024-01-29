WITH PlayoffStats AS (
    SELECT
        player_id,
        player_name,
        COUNT(*) AS total_playoff_games,
        SUM(CASE WHEN win_loss = 'W' THEN 1 ELSE 0 END) AS playoff_wins
    FROM
        {{ ref('stg_player_game_logs') }}
    WHERE
        game_type = 'Playoffs'
    GROUP BY
        player_id,
        player_name
    HAVING
        COUNT(*) >= 50
         -- Players with at least 50 playoff games
),
PlayoffWinPercentage AS (
    SELECT
        player_id,
        player_name,
        playoff_wins,
        total_playoff_games,
        (CAST(playoff_wins AS FLOAT) / total_playoff_games) AS win_percentage
    FROM
        PlayoffStats
)

SELECT
    player_id,
    player_name,
    playoff_wins,
    total_playoff_games,
    win_percentage
FROM
    PlayoffWinPercentage
ORDER BY
    win_percentage DESC, total_playoff_games DESC
