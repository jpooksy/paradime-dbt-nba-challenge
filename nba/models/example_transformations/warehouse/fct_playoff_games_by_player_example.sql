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
    AND
        mins_played > 0
    GROUP BY
        player_id,
        player_name
),
PlayoffWinPercentage AS (
    SELECT
        player_id,
        player_name,
        total_playoff_games,
        playoff_wins,
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
    total_playoff_games DESC, playoff_wins DESC
