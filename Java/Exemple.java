public class TypeNonDeclare {

    public static void main(String[] args) {
        // Déclaration des variables
        double heureDebut, duree;
        long a, b;
        
        // Enregistrement de l'heure de début en millisecondes
        heureDebut = System.currentTimeMillis();

        // Boucle de calcul
        for (long i = 1; i <= 100000000; i++) {
            a = 1;
            b = a + 1;
            a = a + b;
            b = a * b;
        }

        // Calcul de la durée
        duree = (System.currentTimeMillis() - heureDebut) / 1000.0;

        // Affichage de la durée
        System.out.println("Durée d'exécution : " + duree + " secondes");
    }
}