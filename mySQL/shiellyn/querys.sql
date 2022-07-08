SELECT * FROM characters_v4;
SELECT * FROM got_episodes_v4;
SELECT * FROM houses_v1;

# Quantos usuários opinaram sobre cada temporada?
SELECT * FROM got_episodes_v4;
SELECT Season, SUM(Users_reviews) AS Opniao_Usuarios from got_episodes_v4 GROUP BY Season;

#Qual temporada contou com mais de 1000 opnião dos usuários?
SELECT Season, SUM(Users_reviews) AS Opniao_Usuarios from got_episodes_v4 GROUP BY Season HAVING SUM(Users_reviews) > 1000;

#Quais temporadas foram mais e menos comentadas?
SELECT Episode, Max(Users_reviews) AS Mais_Comentada, MIN(Users_reviews) AS Menos_Comentada from got_episodes_v4
GROUP BY Episode HAVING SUM(Users_reviews);


#mostra as avaliações dos episódios da oitava temporada
SELECT got_episodes_v4.Season, got_episodes_v4.Episode, got_episodes_v4.Rating FROM got_episodes_v4
WHERE Season = 8;

# Quantos personagens possuem o ultimo sobrenome Lannister?
SELECT  `Character` FROM characters_v4 WHERE `Character` LIKE '%Lannister';

# Quais episodios de cada temporada tiveram maior audiência?







