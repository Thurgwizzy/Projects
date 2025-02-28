# Importation du fichier client
clients <- read.csv("C:/Users/DODIOMON THIERY Y K/Desktop/Programmation/Mes Projets/R/Base_Clients.csv", sep = ";")
View(clients) #Les donn??es ne s'affichent pas en tableau donc il faut ajouter un s??parateur (sep = ;)
str(clients)

#Importation du fichier vente
vente <- read.csv("C:/Users/DODIOMON THIERY Y K/Desktop/Programmation/Mes Projets/R/Base_Ventes.csv", sep = ";")
View(vente)

#Importation fichier excel
install.packages("readxl")
library(readxl)
test <- read_excel("C:/Users/DODIOMON THIERY Y K/Desktop/Programmation/Mes Projets/R/Base_Clients.xlsx")

#Structure de la base de donn??es
str(vente)

#Avoir une description rapide des donn??es
summary(clients)
summary(vente)

#Description des variables qualitatives
clients$EducationLevel <- as.factor(clients$EducationLevel) #conversion de type de "EducationLevel"
clients$EducationLevel
summary(clients)

#Afficher 5 premi??res lignes de donn??es
head(clients, 5)
#Afficher 5 derni??res lignes de donn??es
tail(clients, 5)

#Dimension d'une base de donn??es
dim(clients) #Pour afficher les nbres de lignes on peut utiliser nrow(clients)
dim(vente) #Pour afficher les nbres de lignes on peut utiliser ncol(vente)

#Voir les groupes de la base de donn??es
unique(clients$AgeGroup)

#Voir le nombre d'individu par groupe
table(clients$AgeGroup)

#Supprimer les valeurs manquantes d'une base de donn??es (na.omit)
Tab_sans_NA <- na.omit(vente)
dim(Tab_sans_NA)
