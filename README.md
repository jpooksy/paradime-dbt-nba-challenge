# Example Submission: dbt™ data modeling challenge - NBA Edition 
Note: You can copy this format if you'd like! 
## Introduction
Welcome to my final project for the _dbt™ data modeling challenge - NBA Edition_ hosted by [Paradime](https://www.paradime.io/)! 
This project aims to analyze and visualize interesting NBA statistics, and it's geared towards NBA fans. 

## Data sources
In my final project, I used three of the six NBA data sets provided by Paradime:
- *PLAYER_GAME_LOGS*
- *TEAM_STATS_BY_SEASON*
- *COMMON_PLAYER_INFO*

## Methodology
This section describes the tools (e.g., dbt™, SQL, Python) and techniques used for data extraction, transformation, and visualization.
For my final project I used the following:
- **Tools**
  - Paradime (SQL, dbt™, and .csv exports)
  - Snowflake (Storage and Compute)
  - Google Sheets (Vizualization)
- **Techniques**:
  - Used SQL + dbt™ to transform _stg_player_game_logs_ into player stats by season (_player_game_logs_agg_example.sql_). 
    This transformation helped find players with the most points scored in a regular season and playoff throughout NBA history.
  - Used SQL + dbt™ to transform _stg_player_game_logs_ and _stg_common_player_info_ into playoff games by player (fct_playoff_games_by_player_example.sql_)
  - Used SQL + dbt™ to transform _stg_common_player_info_ into players by college (_fct_players_by_college_example.sql_)
    This transformation helped me find colleges/universities with the most nba players throughout NBA history.
  - Used Used SQL + dbt™ to transform _stg_team_stats_by_season_ into playoff appearances by NBA team (_fct_playoff_appearances_by_team_)
    This transformatoin helped me find discover the NBA teams with the most playoff appearances and their playoff appearance. 

## Vizualizations
**Playoff Appearances by Team**

This vizualization shows all 30 NBA teams and their respective playoff appearances, and playoff appearance percentage (seasons played/playoff appearance seasons)

![Playoff Appearances by Team](https://github.com/jpooksy/dbt_Data_Modeling_Challenge_NBA/assets/107123308/1630799f-5191-4f16-b5db-17494284b295)

*Insights*
The Los Angeles Lakers have the most playoff appearances in NBA history (63), and the highest playoff appearance percentage (83%). 
In other words, the Lakers have made the playoffs in 63 of their 76 NBA seasons!
You'll notice that the San Antonion Spurs have the secon highest playoff appearance percentage (81%); They've only missed the playoffs 9 times! 


**Playoff Games by Player**

This vizualization shows NBA players with the most total playoff game wins, as well as their playoff game win percentage. 
Playoff games where player didn't particpate (played 0 minutes) are excluded from the results. The "*" next to the player name indicates if
the player is part of the [NBA Greatest 75 Team](https://www.nba.com/news/nba-75th-anniversary-team-announced) (One of the 75 best players of all time).

![Playoff Games by Player](https://github.com/jpooksy/dbt_Data_Modeling_Challenge_NBA/assets/107123308/67f7fb5a-49d6-4be9-beb3-a05a33e9274b)

*Insights*
No Surprise, Lebron James has the most playoff appearance of any NBA player in history. He's arguably the greatest player of all time, 
but there's many more insights to gather from this: Of the 25 players with the most playoff appearances, only 12 of them are members 
of the [NBA Greatest 75 team](https://www.nba.com/news/nba-75th-anniversary-team-announced). There are several players listed that impact
playoff wins, compliment their team's bestplayers, but aren't known as on the the all time greats (ex. Derek Fisher, Robert Horry, Danny Green). 
Conclusion - Every NBA team needs fantastic role players! 


**Most Points Scored by Player in NBA Playoff Season**

This vizualization shows nba players who have scored the most points in any playoff season, as well as their avg. points per per game 
in that playoff season

![Most Points Scored by Player in NBA Playoff Season](https://github.com/jpooksy/dbt_Data_Modeling_Challenge_NBA/assets/107123308/83e7f565-5383-4864-a673-df58262204d9)

*Insights*
No surprise, Michael Jordan has the most playoff points of any player in any playoff season, but more impressive than that, 
he also averaged the most PPG in a playoff season during his championship run in 1992-93! 
Additionally, only 3 players have 3 playoff season within the all-time top 25: Michael Jordan, Lebron James, and Kobe Bryant! 


**Most Points Scored by Player in NBA Regular Season**

This vizualization shows nba players who have scored the most points in any regular season, as well as their avg. points per per game 
in that regular season

![Most Points Scored by Player in NBA Regular Season](https://github.com/jpooksy/dbt_Data_Modeling_Challenge_NBA/assets/107123308/42bb412b-231c-4d55-8b6a-70f61fea1543)

*Insights*
Simply put, Wilt Champerlain is one of the best regular season players of all time. In addition to having one of the most points scored 
in any regular season ever (4,029), he also has six season in the top 25. The only other player with 6 top 25 seasons is Michael Jordan.


**Most NBA Players by University**

This vizualization shows colleges and universities who have produced the most NBA players. 

![Most NBA Players by University](https://github.com/jpooksy/dbt_Data_Modeling_Challenge_NBA/assets/107123308/bcb76289-2584-4dfe-9c5c-a2de227621f2)

*Insights*
Kentucky has produced the most NBA players in NBA history by a significant margin.... Go Wildcats! 


## Conclusions
This project successfully extracts significant insights from NBA data that NBA fans would find interesting, such as: 

- The dominance of teams like the Los Angeles Lakers and the San Antonio Spurs in playoff appearances
- The critical role of "role" players, as highlighted by the playoff games by player insights,
- The extraordinary achievements of players like LeBron James, Michael Jordan, and Wilt Chamberlain in both playoff and regular seasons,
- The influence of universities like Kentucky in producing NBA talent.
