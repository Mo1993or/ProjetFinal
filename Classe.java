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
public class Classe {
    private int idClasse;
    private String nomClasse;
    private String annee;

    public Classe() {
    }

    public Classe(int idClasse, String nomClasse, String annee) {
        this.idClasse = idClasse;
        this.nomClasse = nomClasse;
        this.annee = annee;
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
    
    
}
