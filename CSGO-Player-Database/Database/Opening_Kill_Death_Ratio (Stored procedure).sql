DELIMITER $$

CREATE PROCEDURE Opening_Kill_Death_Ratio(IN playerid INT, OUT Ratio DECIMAL(15,4))
BEGIN

    DECLARE totalOpeningKill INT DEFAULT 0;
    DECLARE totalOpeningDeath INT DEFAULT 0;
    
	SELECT ks.total_opening_kills 
    INTO totalOpeningKill
    FROM killstats ks
    WHERE ks.player_id=playerid
    LIMIT 1;
    
    SELECT ds.total_opening_deaths 
    INTO totalOpeningDeath
    FROM deathstats ds
    where ds.player_id=playerid
    LIMIT 1;
    
    IF totalOpeningDeath = 0 THEN
        SET Ratio = NULL; 
    ELSE
        SET Ratio = totalOpeningKill / totalOpeningDeath;
    END IF;
END $$

DELIMITER ;


CALL Opening_Kill_Death_Ratio(11893, @Ratio); 
SELECT @Ratio AS Opening_Kill_Death_Ratio;