DELIMITER $$

CREATE PROCEDURE Get_Team_Stats(IN teamname VARCHAR(100), out totalplayers INT, out totalkills INT)
BEGIN

	SELECT COUNT(*)
    INTO totalplayers
    FROM playerinfos pi
    JOIN teams t ON t.team_id=pi.team_id
    WHERE t.team_name=teamname;

	SELECT SUM(ks.total_kills)
    INTO totalkills
    FROM killstats ks
    JOIN playerinfos pi ON pi.player_id=ks.player_id
	JOIN teams t ON t.team_id=pi.team_id
    WHERE t.team_name=teamname;
    
END $$

DELIMITER ;

SET @teamname = "Vitality";  

CALL Get_Team_Stats(@teamname, @totalplayers, @totalkills);
SELECT @teamname AS TeamName, @totalplayers AS TotalPlayers, @totalkills AS TotalKills;
