import 'package:dart_bank_application/modele/compte_epargne.dart';

void main() {
  CompteEpargne monCompteEpargne = CompteEpargne('Jane Doe', 5000.0, 2.5);

  monCompteEpargne.afficherSolde();

  monCompteEpargne.crediter(200.0);
  monCompteEpargne.afficherSolde();

  monCompteEpargne.calculerInteret();
  monCompteEpargne.afficherSolde();

  monCompteEpargne.debiter(1000.0); 
  monCompteEpargne.afficherSolde();
}
