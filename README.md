# dbt™ Data Modeling Challenge - NBA Edition: Example Submission
This example illustrates a high-quality submission for the dbt™ data modeling challenge - NBA Edition, eligible for cash prizes. Feel free to adopt this format, but ensure your insights are original!

## Introduction
Welcome to my submission for the _dbt™ data modeling challenge - NBA Edition_, hosted by [Paradime](https://www.paradime.io/). This project delves into analyzing and visualizing compelling NBA statistics, catering to basketball enthusiasts.

## Data Sources
In this project, I utilized three key NBA data sets provided by Paradime:
- *PLAYER_GAME_LOGS*
- *TEAM_STATS_BY_SEASON*
- *COMMON_PLAYER_INFO*

## Methodology
### Tools Utilized
- Paradime (for SQL, dbt™, and .csv exports)
- Snowflake (for Storage and Compute)
- Google Sheets (for Visualization)

### Techniques Applied
- Transformation of _stg_player_game_logs_ into seasonal player stats using SQL and dbt™.
- Combination of _stg_player_game_logs_ and _stg_common_player_info_ to analyze playoff games by player.
- Analysis of _stg_common_player_info_ to identify NBA players by college.
- Examination of _stg_team_stats_by_season_ to assess playoff appearances by NBA teams.

## Visualizations
### Playoff Appearances by Team
This visualization presents the playoff appearances of all 30 NBA teams, along with their playoff appearance percentages.

*Insights:* 
The Los Angeles Lakers lead in playoff appearances, while the San Antonio Spurs showcase a high playoff appearance percentage.

### Playoff Games by Player
Analyzing the NBA players with the most playoff game wins and their win percentages.

*Insights:* 
LeBron James stands out for his playoff appearances, highlighting the importance of both star and role players.

### Most Points Scored by Player in NBA Playoff Season
Showcasing players with the highest scores in playoff seasons.

*Insights:* 
Michael Jordan, LeBron James, and Kobe Bryant emerge as top performers in playoff point scoring.

### Most Points Scored by Player in NBA Regular Season
Focusing on players with the highest scores in regular seasons.

*Insights:* 
Wilt Chamberlain and Michael Jordan dominate in regular-season scoring achievements.

### Most NBA Players by University
Displaying universities producing the most NBA players.

*Insights:* 
Kentucky is a notable contributor to the NBA talent pool.

## Conclusions
This project highlights significant insights for NBA fans, including the dominance of certain teams in playoffs, the pivotal roles of various players, and the contributions of universities in nurturing NBA talent.
