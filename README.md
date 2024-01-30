# dbt™ Data Modeling Challenge - NBA Edition: Example Submission
An exemplar submission for the dbt™ data modeling challenge - NBA Edition, showcasing techniques eligible for cash prizes. Feel free to use this template for your submission, but ensure your insights are unique!

## Table of Contents
1. [Introduction](#introduction)
2. [Data Sources](#data-sources)
3. [Methodology](#methodology)
   - [Tools Used](#tools-used)
   - [Applied Techniques](#applied-techniques)
4. [Visualizations](#visualizations)
   - [Team Playoff Appearances](#team-playoff-appearances)
   - [Player Playoff Games](#player-playoff-games)
   - [Top Playoff Scorers](#top-playoff-scorers)
   - [Top Regular Season Scorers](#top-regular-season-scorers)
   - [NBA Players by University](#nba-players-by-university)
5. [Conclusions](#conclusions)

## Introduction
Explore my project for the _dbt™ data modeling challenge - NBA Edition_. Hosted by [Paradime](https://www.paradime.io/), this project dives into the analysis and visualization of NBA statistics, designed for basketball fans and analysts.

## Data Sources
My analysis leverages three key NBA datasets from Paradime:
- *PLAYER_GAME_LOGS*
- *TEAM_STATS_BY_SEASON*
- *COMMON_PLAYER_INFO*

## Methodology
### Tools Used
- **[Paradime](https://www.paradime.io/)** for SQL, dbt™, and CSV exports.
- **[Snowflake](https://www.snowflake.com/)** for data storage and computing.
- **Google Sheets** for data visualization.

### Applied Techniques
- SQL and dbt™ to transform _stg_player_game_logs_ into seasonal player statistics
- SQL and dbt™ to transform _stg_player_game_logs_ and _stg_common_player_info_ to understand
  playoff and regular season performance by individual players
- SQL and dbt™ to transform _stg_common_player_info_ for insights on NBA players' college backgrounds.
- SQL and dbt™ transform _stg_team_stats_by_season_ for insights into team playoff appearances.

## Visualizations
### Team Playoff Appearances
Visualization of playoff appearances for all 30 NBA teams, including their playoff appearance rates.

![Team Playoff Appearances](https://github.com/jpooksy/dbt_Data_Modeling_Challenge_NBA/assets/107123308/48b10c60-8388-495b-9901-f8306b0b8a56)

*Insights:* 
The Los Angeles Lakers' dominance in playoff appearances, and the San Antonio Spurs' highest playoff appearance rate. 
The Spurs have only missed the playoffs 9 time! 

### Player Playoff Games
Assessment of NBA players with the highest number of playoff game wins and their win percentages.

![Player Playoff Games](https://github.com/jpooksy/dbt_Data_Modeling_Challenge_NBA/assets/107123308/4c68a500-b165-4e1c-a81e-152956ac1c11)

*Insights:* 
LeBron James has the most playoff wins of any player, but here's what's most interesting: 
Of the 25 players with the most playoff appearances, only 12 of them are members of the [NBA Greatest 75 team](https://www.nba.com/news/nba-75th-anniversary-team-announced). 
There are several players listed that impact playoff wins and compliment their team's best players, but aren't known 
as on the the all time greats, such as: Derek Fisher, Robert Horry, Danny Green. 

### Top Playoff Scorers
Showcases players who achieved the the most points scored in any playoff season.

![Top Playoff Scorers](https://github.com/jpooksy/dbt_Data_Modeling_Challenge_NBA/assets/107123308/0100299f-7fd8-463d-81cf-f7eb6a5f0068)

*Insights:* 
Michael Jordan, LeBron James, and Kobe Bryant are the only players having three seasons within the top 25 
highest most points scored in a playoff season.

### Top Regular Season Scorers
Highlights NBA players who scored the most in regular seasons.

![Top Regular Season Scorers](https://github.com/jpooksy/dbt_Data_Modeling_Challenge_NBA/assets/107123308/d3fc94d0-7cd7-41ca-bc94-4b285f300eb3)

*Insights:* 
Wilt Champerlain is one of the best regular season scorer of all time. In addition to having the most points scored 
in any regular season ever (4,029), he also has six season in the top 25. The only other player with 6 top 25 seasons is Michael Jordan.
In the chart above, notice that Wilt Champerlain doesn't appear once in the top 25 playoff scorers of all time 👀.


### NBA Players by University
Displays which universities have produced the most NBA players.

![NBA Players by University](https://github.com/jpooksy/dbt_Data_Modeling_Challenge_NBA/assets/107123308/a84b3b2d-c51b-4267-bb0b-d5941517bbc8)

*Insights:* 
Kentucky has produced the most NBA players in NBA history by a significant margin.... Go Wildcats! 

## Conclusions
This project offers key insights for NBA enthusiasts, such as:
This project successfully extracts significant insights from NBA data that NBA fans would find interesting, such as: 

- The dominance of teams like the Los Angeles Lakers and the San Antonio Spurs in playoff appearances
- The critical role of "role" players, as highlighted by the playoff games by player insights,
- The extraordinary achievements of players like LeBron James, Michael Jordan in he playoffs, and Wilt Chamberlain in the regular season. 
- The influence of universities like Kentucky in producing NBA talent.
