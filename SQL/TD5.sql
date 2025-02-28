--Exo 1
SELECT Ftitre, Fgenre, Fannee, Anom, Aprenom
FROM film JOIN artiste ON FrealisateurID = ArtisteID
WHERE Fgenre = "Drame" AND (Fannee BETWEEN 1980 AND 1989)
ORDER BY Fannee

--Exo 2
--Q1
SELECT Jrole, Anom, Aprenom
FROM joue JOIN artiste ON ArtisteID = JArtisteID
WHERE Anat = "USA"
ORDER BY Anom, Aprenom, Jrole

--Q2
SELECT Ftitre
FROM film JOIN note ON FilmID = NFilmID
WHERE Nnote < 10
ORDER BY Ftitre

--Q3
SELECT DISTINCT Ftitre
FROM film JOIN note ON FilmID = NFilmID
WHERE Nnote < 10
ORDER BY Ftitre

