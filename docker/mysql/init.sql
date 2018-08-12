SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
set global net_buffer_length=1000000;
set global max_allowed_packet=1000000000;
SET foreign_key_checks = 0;


SELECT 'MYSQL started successfully' AS '';

SOURCE /scripts/data.sql;

SET foreign_key_checks = 1;
SELECT 'MYSQL started successfully' AS '';

