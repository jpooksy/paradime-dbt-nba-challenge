WITH source AS (
    SELECT 
        * 
    FROM 
        public.teams
),

renamed AS (
    SELECT
        id as team_id, -- Assuming 'team_id' is the correct column name
        full_name,
        abbreviation as team_name_abbreviation,
        nickname,
        city,
        state,
        year_founded
    FROM
        source
)

SELECT 
    *
FROM
    renamed
