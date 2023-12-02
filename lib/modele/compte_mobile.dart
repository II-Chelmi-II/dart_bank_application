import 'package:dart_bank_application/modele/compte.dart';

class CompteMobile extends Compte {

  double fraisTransaction;

  CompteMobile(String proprietaire, double solde, this.fraisTransaction)
      : super(proprietaire, solde);

  void effectuerTransactionMobile(double montant) {

    if (montant + fraisTransaction <= solde) {
      solde -= (montant + fraisTransaction);
      print('Transaction mobile de $montant effectuée avec des frais de $fraisTransaction. Nouveau solde : $solde');
    } else {
      print('Solde insuffisant pour effectuer la transaction mobile.');
    }

  }

}