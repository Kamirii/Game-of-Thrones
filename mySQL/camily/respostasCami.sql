SELECT * FROM characters;
SELECT * FROM houses;

# Mostrar a casa dos personagens com o sobrenome Stark 
ALTER TABLE characters ADD id_house INT; 
ALTER TABLE houses ADD id_house INT AUTO_INCREMENT PRIMARY KEY;
ALTER TABLE characters ADD FOREIGN KEY (id_house) REFERENCES houses(id_house);

SET SQL_SAFE_UPDATES = 0;
UPDATE characters
SET id_house = '376'
WHERE characters.Character LIKE ("%Stark");

SELECT * FROM characters
INNER JOIN houses
ON characters.id_house = houses.id_house;
#-------------------------------------------------------------------------
#Quais casas que começam com B,W C ou S existem na região Norte?
SELECT * FROM houses 
WHERE Region LIKE 'N%' AND 
(House_name LIKE 'B%' OR House_name LIKE 'W%' OR House_name LIKE 'C%' OR House_name LIKE 'S%');
#-------------------------------------------------------------------------
#Quais personagens possuem o ultimo sobrenome Lannister?
SELECT characters.Character FROM characters WHERE characters.Character LIKE '%Lannister';