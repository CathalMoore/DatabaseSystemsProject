--WE'VE FOLLOWED THE SUGGESTED TUTORIAL SOLUTIONS AND ONLINE SOLUTIONS
--BUT STILL WE GET AN ERROR IN RUNNING
--PERHAPS IT'S PHPMYADMIN, ALTHOUGH WE COULDN'T FIND A SOLUTION

--CHANGES THE DAMAGE A WEAPON DOES
CREATE PROCEDURE AlterDamage(IN w VARCHAR(32), IN d int(2))
MODIFIES SQL DATA

BEGIN
    DECLARE pr INTEGER;

    SELECT damage INTO pr
    FROM weapon_stats
    WHERE damage = d AND 
                  weapon_name = w;


    START TRANSACTION;

    IF (pr IS NULL) THEN
         
         UPDATE weapon_stats 
         SET damage = r
         WHERE weapon_name = w;
    ELSEIF (d IS NOT NULL) THEN
         UPDATE weapon_stats
	 SET damage = damage - pr + d
         WHERE weapon_name = w;
    END IF;
    
    INSERT INTO weapon_stats VALUES (w,d);

    COMMIT;
    END;

--REPAIRS APPAREL IE. IMPROVES IT'S CONDITION
CREATE PROCEDURE RepairApparel(
           
           IN a VARCHAR(32),
           IN c int(2)))
MODIFIES SQL DATA
BEGIN

DECLARE pr int(2);

SELECT apparel_condition INTO pr
    FROM apparel
    WHERE apparel_condition = c AND 
                  apparel_name = a;


    START TRANSACTION;

    IF (pr IS NULL) THEN
         
         UPDATE apparel
         SET apparel_condition = c
         WHERE apparel_name = a;
    ELSEIF (d IS NOT NULL) THEN
         UPDATE apparel
	 SET apparel_condition = c
         WHERE apparel_name = a;
    END IF;
    
    INSERT INTO apparel VALUES (a,c);

    COMMIT;
    END;//
