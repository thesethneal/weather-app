-- **************************************************************
-- This script destroys the database and associated users
-- **************************************************************

-- The following line terminates any active connections to the database so that it can be destroyed
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'weather_app';

DROP DATABASE weather_app;

DROP USER weather_app_owner;
DROP USER weather_app_appuser;
