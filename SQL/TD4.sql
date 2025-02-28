--Exercice TD4
--Exo 1
--Q1
SELECT Ftitre, Fgenre, Fannee
FROM film
WHERE Fannee >= 1970
ORDER BY Fannee

--Q2
	--1
SELECT Ftitre, Fgenre, Fannee
FROM film
WHERE Fannee BETWEEN 1970 AND 1979
ORDER BY Fannee

	--2
SELECT Ftitre, Fgenre, Fannee
FROM film
WHERE 1970 <= Fannee AND Fannee < 1980
ORDER BY Fannee

--Q3
SELECT Anom, Aprenom
FROM artiste
WHERE Asexe = 'F' AND Anat IN ('FRANCE')

--Q4
	--1
SELECT Anom, Aprenom, Anat
FROM artiste
WHERE Anat IN ('UK', 'CANADA', 'USA')

	--2
SELECT Anom, Aprenom, Anat
FROM artiste
WHERE Anat = 'UK' OR Anat = 'CANADA' OR Anat = 'USA'

--Q5
	--Avec LIKE
SELECT Ftitre
FROM film
WHERE Ftitre LIKE 'L%'

	--Sans LIKE (Avec LEFT) : Il extrait la 1ère lettre de la chaîne et la compare à L
SELECT Ftitre
FROM film
WHERE LEFT (Ftitre, 1) = 'L'

	--Sans LIKE (Avec ASCII) : donne le code ASCII du premier caractère et le compare à celui de L
SELECT Ftitre
FROM film
WHERE ASCII(Ftitre) = ASCII('L')

--Q6
SELECT Ftitre
FROM film
WHERE Ftitre LIKE 'L%' AND Ftitre NOT LIKE 'Le%'

--Q7
SELECT Ftitre
FROM film
WHERE Ftitre LIKE '%et%'

--Q8
	--Avec LIKE
SELECT Mnom, Mprenom
FROM membre
WHERE Mnom LIKE '_____'

	--Avec LENGTH
SELECT Mnom, Mprenom
FROM membre
WHERE LENGTH (Mnom) = 5

--Q9
SELECT Anom, Aprenom, Anat
FROM artiste
WHERE Amort IS NOT NULL

--Q10
SELECT Anom, Aprenom, Anat
FROM artiste
WHERE Amort IS NULL

--Q11
SELECT Ftitre, Fgenre, Fannee, Fnat, Fduree
FROM film
WHERE Fgenre = 'Drame'
AND Fnat IN ('FRANCE', 'USA')
AND (Ftitre LIKE 'L%' OR Ftitre LIKE 'S%')
AND Fannee BETWEEN 1950 AND 1985
AND Fduree >= 90;

--Q12
SELECT Mnom, Mprenom, Mnaissance
FROM membre
WHERE Mnaissance >= 2023 - 40

--Q13
SELECT Anom, Aprenom, Anaissance, Amort
FROM artiste
WHERE YEAR(Amort) >= YEAR(Anaissance) + 85
ORDER BY Anaissance


	