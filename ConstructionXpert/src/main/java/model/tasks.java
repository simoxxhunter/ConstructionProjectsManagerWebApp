package model;

public class tasks {
    private int id_Tache;
    private String description;
    private String date_debut;
    private String date_fin;
    private String statut;
    private resources resources;
    private projects projects;

    public tasks(int id_Tache, String description, String date_debut, String date_fin, String statut, resources resources, projects projects) {
        this.id_Tache = id_Tache;
        this.description = description;
        this.date_debut = date_debut;
        this.date_fin = date_fin;
        this.statut = statut;
        this.resources = resources;
        this.projects = projects;
    }

    public int getId_Tache() {
        return id_Tache;
    }

    public void setId_Tache(int id_Tache) {
        this.id_Tache = id_Tache;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDate_debut() {
        return date_debut;
    }

    public void setDate_debut(String date_debut) {
        this.date_debut = date_debut;
    }

    public String getDate_fin() {
        return date_fin;
    }

    public void setDate_fin(String date_fin) {
        this.date_fin = date_fin;
    }

    public String getStatut() {
        return statut;
    }

    public void setStatut(String statut) {
        this.statut = statut;
    }

    public model.resources getResources() {
        return resources;
    }

    public void setResources(model.resources resources) {
        this.resources = resources;
    }

    public model.projects getProjects() {
        return projects;
    }

    public void setProjects(model.projects projects) {
        this.projects = projects;
    }

    @Override
    public String toString() {
        return "tasks{" +
                "id_Tache=" + id_Tache +
                ", description='" + description + '\'' +
                ", date_debut='" + date_debut + '\'' +
                ", date_fin='" + date_fin + '\'' +
                ", statut='" + statut + '\'' +
                ", resources=" + resources +
                ", projects=" + projects +
                '}';
    }
}
