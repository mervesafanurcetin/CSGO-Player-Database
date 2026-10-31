-- Just checking some informations
SHOW TABLE STATUS LIKE 'playerinfos';
SHOW FULL COLUMNS FROM playerinfos;

-- Converting character set 
ALTER TABLE playerinfos CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- We need this location for permission
SHOW VARIABLES LIKE 'secure_file_priv';

-- Just checking some informations
SHOW CREATE TABLE playerinfos;

-- I fixed from playerinfos table. No need this anymore but still i'll keep it
ALTER TABLE playerinfos MODIFY team_id INT NULL;

-- -- I fixed from playerinfos table. No need this anymore but still i'll keep it
ALTER TABLE playerinfos DROP INDEX unique_nickname;

-- Loading data from secure file location. First you need to paste your playerinfos.csv to load your data and use its location.
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\playerinfos.csv'
INTO TABLE playerinfos
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from playerinfos;