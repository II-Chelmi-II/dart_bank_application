import 'package:dart_bank_application/modele/compte.dart';

class CompteEpargne extends Compte {

  double tauxInteret;

  CompteEpargne(String proprietaire, double solde, this.tauxInteret)
      : super(proprietaire, solde);

  void calculerInteret() {
    double interet = solde * (tauxInteret / 100);
    crediter(interet);
    print('Intérêt de $interet crédité. Nouveau solde : $solde');
  }

  @override
  void debiter(double montant) {
    if (solde >= montant) {
      solde -= montant;
      print('Retrait de $montant effectué. Nouveau solde : $solde');
    } else {
      print('Opération impossible. Solde insuffisant.');
    }
  }
}
