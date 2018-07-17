package fr.wildcodeschool.roadtoworkout;

public class ObjectifModel {

    private String day;
    private String muscularGroup;
    private String exercice;
    private int serie;
    private int repetitions;
    private int repos;
    private int idObjectif;


    public ObjectifModel(int idObjectif, String day, String muscularGroup, String exercice, int serie, int repetitions, int repos) {
        this.idObjectif = idObjectif;
        this.day = day;
        this.muscularGroup = muscularGroup;
        this.exercice = exercice;
        this.serie = serie;
        this.repetitions = repetitions;
        this.repos = repos;
    }

    public int getIdObjectif() {
        return idObjectif;
    }

    public void setIdObjectif(int idObjectif) {
        this.idObjectif = idObjectif;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getMuscularGroup() {
        return muscularGroup;
    }

    public void setMuscularGroup(String muscularGroup) {
        this.muscularGroup = muscularGroup;
    }

    public String getExercice() {
        return exercice;
    }

    public void setExercice(String exercice) {
        this.exercice = exercice;
    }

    public int getSerie() {
        return serie;
    }

    public void setSerie(int serie) {
        this.serie = serie;
    }

    public int getRepetitions() {
        return repetitions;
    }

    public void setRepetitions(int repetitions) {
        this.repetitions = repetitions;
    }

    public int getRepos() {
        return repos;
    }

    public void setRepos(int repos) {
        this.repos = repos;
    }
}
