--CREATE A VIEW TO COMPILE ALL ITEM PRICES TOGETHER HIGHEST TO LOWEST
CREATE VIEW AllPrices AS 
      SELECT weapon_name AS 'ITEM', price AS 'PRICE($)' 
      FROM weapon_stats 
      UNION
      SELECT apparel_name name, price
      FROM apparel_stats
      ORDER BY price

--QUERY VIEW TO SELECT THE MOST EXPENSIVE ITEM IN THE INVENTORY
SELECT DISTINCT *
FROM ALLPrices
where price = (SELECT MAX(price) FROM AllPrices);

DROP VIEW AllPrices;

CREATE INDEX damage_index
ON weapon_stats(damage);

CREATE INDEX dt_index
ON apparel_stats(DT);

--RETURNS ALL WEAPONS WITH LOW DAMAGE
SELECT weapon_id, weapon_name
FROM weapons NATURAL JOIN weapon_stats
GROUP BY weapon_id
HAVING MAX(damage) < 30;

--RETURNS MELEE WEAPON WITH HIGHEST DAMAGE
SELECT weapon_name, MAX(damage)
FROM  weapon_stats
WHERE weapon_name IN (SELECT weapon_name
FROM weapon_stats
WHERE clip_size IS NULL)

ALTER TABLE weapon_stats DROP INDEX damage_index;

--RETURNS ALL APPAREL WITH A HIGH DAMAGE THRESHOLD
SELECT apparel_id, apparel_name, DT
FROM apparel NATURAL JOIN apparel_stats 
GROUP BY apparel_id
HAVING SUM(DT) > 8;

ALTER TABLE apparel_stats DROP INDEX dt_index;
