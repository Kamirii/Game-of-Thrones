#Qual o episódio com maior audiência?
SELECT Season AS temporada,Episode AS Episodio, US_Viewers as MaiorAudiencia 
FROM gameofthrones.got_episodes_v4 
WHERE US_Viewers = (SELECT MAX(US_Viewers) FROM got_episodes_v4);

#Qual a quantidade de episódios feita por cada roteirista?
SELECT * FROM gameofthrones.characters_v4;
SELECT COUNT(Writer_1), Writer_1 FROM gameofthrones.got_episodes_v4 GROUP BY Writer_1;
SELECT COUNT(Writer_2), Writer_2 FROM gameofthrones.got_episodes_v4 GROUP BY Writer_2;

# Qual o total de episódios que membros da casa lannister aparecera?
SELECT SUM(Episodes_appeared) FROM characters_v4 WHERE characters_v4.Character LIKE '%Lannister';