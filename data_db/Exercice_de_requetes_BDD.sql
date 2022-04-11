--
--sort une liste des noms des personnages par ordre alphabétique--
SELECT Nom FROM Heros
ORDER BY Nom ASC;
--

-- sort une liste des personnages ayant 40 PV--
SELECT pv FROM Heros WHERE pv = 40;
--

--donne le nombre de personnages ayant 40 PV
SELECT COUNT(nom) FROM Heros WHERE pv = 40;
--

--liste tous les personnages de celui qui a le moins de points de vie à celui qui en a le plus
SELECT nom FROM Heros 
ORDER BY pv ASC;

--donne le nom du personnage qui a le plus de points de vie
SELECT nom  FROM Heros ORDER BY pv DESC LIMIT 1;
--

--donne la somme de tous les PV de tous les personnages
SELECT SUM(pv) FROM Heros;

--va donner une liste des noms de personnages avec le nom des compétences qu’ils ont
SELECT DISTINCT Heros.Nom, `Competence-Heros`.Nom FROM Heros INNER JOIN `Competence-Heros` on Heros.ID;