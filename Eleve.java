/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modéle;

/**
 *
 * @author serignemor
 */
public class Eleve {
    private int idClasse;
    private String nomClasse;
    private String annee;
    private int idEleve;
    private String prenom;
 private String nom;
 private String adresse;
 private String telephone;
 
 private String dateNaiss;
 private String lieuNaiss;

    public Eleve() {
    }

    public Eleve(int idClasse, String nomClasse, String annee, int idEleve, String prenom, String nom, String adresse, String telephone, String dateNaiss, String lieuNaiss) {
        this.idClasse = idClasse;
        this.nomClasse = nomClasse;
        this.annee = annee;
        this.idEleve = idEleve;
        this.prenom = prenom;
        this.nom = nom;
        this.adresse = adresse;
        this.telephone = telephone;
        this.dateNaiss = dateNaiss;
        this.lieuNaiss = lieuNaiss;
    }

    public int getIdClasse() {
        return idClasse;
    }

    public void setIdClasse(int idClasse) {
        this.idClasse = idClasse;
    }

    public String getNomClasse() {
        return nomClasse;
    }

    public void setNomClasse(String nomClasse) {
        this.nomClasse = nomClasse;
    }

    public String getAnnee() {
        return annee;
    }

    public void setAnnee(String annee) {
        this.annee = annee;
    }

    public int getIdEleve() {
        return idEleve;
    }

    public void setIdEleve(int idEleve) {
        this.idEleve = idEleve;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getDateNaiss() {
        return dateNaiss;
    }

    public void setDateNaiss(String dateNaiss) {
        this.dateNaiss = dateNaiss;
    }

    public String getLieuNaiss() {
        return lieuNaiss;
    }

    public void setLieuNaiss(String lieuNaiss) {
        this.lieuNaiss = lieuNaiss;
    }
 
 
}
