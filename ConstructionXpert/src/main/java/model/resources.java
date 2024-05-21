package model;

public class resources {
    private int id_Ress;
    private String nom_Ress;
    private String type;
    private float quantité;
    private String nom_fournisseur;
    private String num_fournisseur;

    // Default constructor
    public resources() {
    }

    public int getId_Ress() {
        return id_Ress;
    }

    public void setId_Ress(int id_Ress) {
        this.id_Ress = id_Ress;
    }

    public String getNom_Ress() {
        return nom_Ress;
    }

    public void setNom_Ress(String nom_Ress) {
        this.nom_Ress = nom_Ress;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public float getQuantité() {
        return quantité;
    }

    public void setQuantité(float quantité) {
        this.quantité = quantité;
    }

    public String getNom_fournisseur() {
        return nom_fournisseur;
    }

    public void setNom_fournisseur(String nom_fournisseur) {
        this.nom_fournisseur = nom_fournisseur;
    }

    public String getNum_fournisseur() {
        return num_fournisseur;
    }

    public void setNum_fournisseur(String num_fournisseur) {
        this.num_fournisseur = num_fournisseur;
    }

    @Override
    public String toString() {
        return "resources{" +
                "id_Ress=" + id_Ress +
                ", nom_Ress='" + nom_Ress + '\'' +
                ", type='" + type + '\'' +
                ", quantité=" + quantité +
                ", nom_fournisseur='" + nom_fournisseur + '\'' +
                ", num_fournisseur='" + num_fournisseur + '\'' +
                '}';
    }
}
