-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER weather_app_owner
WITH PASSWORD 'weatherapp';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO weather_app_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO weather_app_owner;

CREATE USER weather_app_appuser
WITH PASSWORD 'weatherapp';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO weather_app_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO weather_app_appuser;
