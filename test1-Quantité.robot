*** Settings ***
Documentation       Cables et fils electrique-Fils de cable_Partie de Commande
Library             SeleniumLibrary
Resource            ../PO/resources.robot
Resource            ../PO/clickAn-Transf.robot
Resource            ../PO/Choose_Quantite-Transf.robot


*** Test Cases ***
Cables et fils electrique-Fils de cable
                resources.open the browser with URL
                clickAn-Transf.clicker sur alimentations-Transformateurs             ${Categories}       ${Alimentations}        ${TRANSFORMATEURS}
                Choose_Quantite-Transf.clicker sur un produit et voir le panier             ${clicker_Produit2}     ${Ajout_Panier}        ${Voirr_Panier}
                Choose_Quantite-Transf.Eliminer le produit (0 Produits)                     ${Soustracter_nbr_produit}    ${Mettre_à_jour_panier}      ${Retour_à_la_boutique}



