class Compte {

  String proprietaire;
  double solde;

  Compte(this.proprietaire, this.solde);

  void crediter(double montant){

    solde += montant;
    print('Crédit de $montant effectué. Nouveau solde : $solde');

  }

  void debiter(double montant){

    if (solde >= montant) {
      solde -= montant;
      print('Retrait de $montant effectué. Nouveau solde : $solde');
    } else {
      print('Solde insuffisant');
    }

  }

  void afficherSolde() {
    print('Solde actuel du compte de $proprietaire : $solde');
  }

}