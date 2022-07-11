SELECT * FROM trabalhomodulo3.got_episodes_v4;

# Qual a quantidade de Ep. dirigidos por Mark Mylod ?

SELECT COUNT(*) AS "Quantidade de ep dirigidos por Mark Mylod" from got_episodes_v4
	WHERE Director = 'Mark Mylod';


# Qual a duração media dos ep de GoT ?

SELECT AVG(Duration) FROM got_episodes_v4;

