# Les types de donn??es en R

# Les vecteurs
notes <- c(20, 18, 19, 17, 9, 8, 12)

# Lire la premi??re valeur du vecteur
notes [1]

# Lire la cinqui??me valeur du vecteur
notes [5]

# La taille du vecteur
length(notes)

# Lire la derni??re valeur du vecteur
notes [length(notes)]

# Mettre ?? jour le vecteur
notes [5] <- 15
notes

# Supprimer un ??l??ment d'un vecteur
notes[-3]

# Cha??ne de caract??res
nom_matiere <- c("R", "Python", "Alg??bre", "Analyse")

# Ajouter un nouvel ??l??ment
nom_matiere <- c(nom_matiere, "SQL")
nom_matiere

# Type de donn??es
str(nom_matiere)
str(notes)

# Cr??ation de listes
liste_etudiants <- list(Nom = "Thierry", Age = 20, Note = 18.5)

# Type de donn??es
str(liste_eutudiants)

# Lire les ??l??ments d'une liste
liste_eutudiants$Nom
liste_eutudiants$Age
liste_eutudiants$Note

# Liste de liste
liste_2 <- list(Nom = "Thierry", Age = 20, Note = notes)
info_etudiants <- list(liste_1 = liste_etudiants, liste_2 = liste_2)
info_etudiants[2]

# Cr??er des matrices
matrice_1 <- matrix(1:9, nrow = 3, ncol = 3) # (nrow = nbre lignes et ncol = nbre colonnes)
matrice_1

# Lire les donn??es d'une matrice
# Lire la premi??re donn??e
matrice_1[1,1]

# Lire la deuxi??me ligne troisi??me colonne
matrice_1[2,3]

# Modifier la matrice
# Changer les valeurs de la premi??re colonnes
matrice_1[,1] <- c(20, 30, 40)
matrice_1

# Afficher les deux premi??res lignes et les deux premi??res colonnes
matrice_1[1:2,1:2]

# Dataframe
df <- data.frame(Nom = c("Thierry", "Franck", "Jessica"), Age = c(20, 26, 23), Sexe = c("M", "M", "F"))
df

# Visualiser le dataframe
View(df)

# Lire les donn??es
df$Nom
df$Age

#Operations arithm??tiques
moyenne <- mean(df$Age)
moyenne

maximum <- max(df$Age)
maximum

minimum <- min(df$Age)
minimum

variance <- var(df$Age)
variance
