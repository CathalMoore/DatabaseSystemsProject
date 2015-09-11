CREATE TABLE IF NOT EXISTS Weapons(
weapon_id INT(3) AUTO_INCREMENT PRIMARY KEY,
weapon_name VARCHAR(32) DEFAULT NULL,
weapon_condition INT(2) DEFAULT 0
);

INSERT INTO weapons(weapon_name, weapon_condition) VALUES
('Maria',30),
('New Jack',70),
('Face Invader',45),
('Man Melter',100),
('Lucille',60);

CREATE TABLE IF NOT EXISTS weapon_stats(
weapon_name VARCHAR(32) PRIMARY KEY,
weapon_type VARCHAR(32) DEFAULT NULL,
damage INT(2) DEFAULT 0,
weight FLOAT(4,2) DEFAULT 0.0,
price FLOAT(4,2) DEFAULT 0.0,
clip_size INT(2) DEFAULT 0
);

INSERT INTO weapon_stats(weapon_name, weapon_type, damage, weight, price, clip_size) VALUES
('Maria','12mm Pistol', 30, 3.5, 25, 6),
('New Jack', 'Hammer', 20, 8, 20, NULL),
('Face Invader','.44 Magnum', 45, 4.5, 50, 5),
('Man Melter','Flamethrower', 4, 12.5, 40, 200),
('Lucille','Baseball Bat', 60, 7, 13, NULL);

CREATE TABLE IF NOT EXISTS apparel(
apparel_id INT(3) AUTO_INCREMENT PRIMARY KEY,
apparel_name VARCHAR(32) DEFAULT NULL,
apparel_condition INT(2) DEFAULT 0
);

INSERT INTO apparel(apparel_name, apparel_condition) VALUES
('Leather Armor', 90),
('Hockey Mask',70),
('Power Armor',65),
('Metal Helmet',90),
('Parkstroller Outfit',100);

CREATE TABLE IF NOT EXISTS apparel_stats(
apparel_name VARCHAR(32) PRIMARY KEY,
apparel_type VARCHAR(32),
DT INTEGER DEFAULT 0,
weight FLOAT(4,2) DEFAULT 0.0,
price FLOAT(4,2) DEFAULT 0.0
);

INSERT INTO apparel_stats(apparel_name, apparel_type, DT, weight, price) VALUES
('Leather Armor', 'Body Armor', 10, 12, 25),
('Hockey Mask', 'Headwear', 2, 2.5, 12),
('Power Armor', 'Body Armor', 30, 18, 500),
('Metal Helmet', 'Headwear', 7, 5.5, 8),
('Parkstroller Outfit', 'Body Armor', 1, 2, 5);

CREATE TABLE IF NOT EXISTS ammo(
weapon_type VARCHAR(32) PRIMARY KEY,
quantity INTEGER DEFAULT 0,
dam_mod INTEGER DEFAULT 0,
cond_mod INTEGER DEFAULT 0,
weight FLOAT(4,2) DEFAULT 0.0,
price FLOAT(4,2) DEFAULT 0.0
);

INSERT INTO ammo (weapon_type, quantity, dam_mod, cond_mod, price, weight) VALUES
('10mm Pistol', '10', '20', '20', '15', '000.010'),
('12 Gauge Shotgun', '5', '50', '30', '17', '3'),
('.44 Magnum', '2', '80', '20', '27', '2'),
('5mm Minigun', '200', '5', '10', '7', '1'),
('Nini Nuke', '3', '9999', '10', '500', '10');

CREATE TABLE IF NOT EXISTS player(
char_name VARCHAR(32) PRIMARY KEY,
strength INTEGER DEFAULT 0,
perception INTEGER DEFAULT 0,
endurance INTEGER DEFAULT 0,
charisma INTEGER DEFAULT 0,
intelligence INTEGER DEFAULT 0,
agility INT DEFAULT 0,
luck INT DEFAULT 0,
equipped_weapon VARCHAR(32) DEFAULT NULL,
equipped_headwear VARCHAR(32) DEFAULT NULL,
equipped_armor VARCHAR(32) DEFAULT NULL
);

INSERT INTO player (char_name, strength, perception, endurance, charisma, intelligence, agility, luck, equipped_weapon, equipped_headwear, equipped_armor) VALUES
('Jack', 2, 3, 5, 2, 1, 0, 3, 'Lucille', 'Metal Helmet', 'Leather Armor'),
('Dwayne', 4, 6, 2, 1, 5, 8, 0, 'Maria', 'Hockey Mask', 'Power Armor'),
('Dave', 3, 0, 1, 1, 3, 0, 2, 'Face Invader', 'Hockey Mask', 'Parkstroller Outfit'),
('Ryan', 4, 2, 1, 3, 6, 2, 1, 'New Jack', 'Metal Helmt', 'Power Armor'),
('Jimmy', 2,0, 1, 0, 1, 0, 9, 'Man Melter','Hockey Mask', 'Leather Armor');
