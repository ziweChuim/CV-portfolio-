
#include <stdio.h>

// Fonction pour trier le tableau dans l'ordre croissant (Bubble Sort)
void triCroissant(int T[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (T[j] > T[j + 1]) {
                // Échange des éléments
                int temp = T[j];
                T[j] = T[j + 1];
                T[j + 1] = temp;
            }
        }
    }
}

// Fonction pour trier le tableau dans l'ordre décroissant (Bubble Sort)
void triDecroissant(int T[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (T[j] < T[j + 1]) {
                // Échange des éléments
                int temp = T[j];
                T[j] = T[j + 1];
                T[j + 1] = temp;
            }
        }
    }
}

// Fonction pour afficher le tableau
void afficherTableau(int T[], int n) {
    for (int i = 0; i < n; i++) {
        printf("%d ", T[i]);
    }
    printf("\n");
}

int main() {
    int T[] = {1, 5, 15, 6, 7};  // Tableau à trier
    int n = sizeof(T) / sizeof(T[0]);  // Taille du tableau

    printf("Tableau initial : ");
    afficherTableau(T, n);

    // Tri croissant
    triCroissant(T, n);
    printf("Tableau trié croissant : ");
    afficherTableau(T, n);

    // Réinitialisation du tableau pour tri décroissant
    int T2[] = {12, 5, 8, 10, 7};
    printf("Tableau pour tri décroissant : ");
    afficherTableau(T2, n);

    // Tri décroissant
    triDecroissant(T2, n);
    printf("Tableau trié décroissant : ");
    afficherTableau(T2, n);

    return 0;
}
