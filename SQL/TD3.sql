--Exercice TD3
--Exo 2
--Q1
SELECT Ftitre
FROM film

--Q2
SELECT Anom, Aprenom, Anaissance
FROM artiste

--Q3
SELECT *
FROM artiste

--Q4
	--avec doublons
SELECT Fgenre --(ou SELECT ALL)
FROM film

	--sans doublons
SELECT DISTINCT Fgenre
FROM film

--Q5
SELECT DISTINCT Fgenre, Fnat
FROM film

--Exo 3
--Q1.a
SELECT Ftitre, Fgenre, Fannee
FROM film
ORDER BY Ftitre --(ASC facultatif)

--Q1.b
SELECT Ftitre, Fgenre, Fannee
FROM film
ORDER BY Ftitre, Fannee --(ASC facultatif)

--Q2.a
SELECT Ftitre, Fgenre, Fannee
FROM film
ORDER BY Fannee

--Q2.b
SELECT Ftitre, Fgenre, Fannee
FROM film
ORDER BY Fannee, Ftitre

--Q3
SELECT Anom, Aprenom
FROM artiste
ORDER BY Anat, Anaissance

--Q4
SELECT Anom, Aprenom
FROM artiste
ORDER BY Asexe


