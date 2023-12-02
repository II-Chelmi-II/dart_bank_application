import 'package:dart_bank_application/modele/compte.dart';

class ComptePrincipal extends Compte {
  double decouvertAutorise;

  ComptePrincipal(String proprietaire, double solde, this.decouvertAutorise)
      : super(proprietaire, solde);

  @override
  void debiter(double montant) {
    double soldeAvecDecouvert = solde - decouvertAutorise;
    if (soldeAvecDecouvert >= montant) {
      solde -= montant;
      print('Retrait de $montant effectué. Nouveau solde : $solde');
    } else {
      print(
          'Opération impossible. Solde insuffisant, même avec découvert autorisé.');
    }
  }
}
