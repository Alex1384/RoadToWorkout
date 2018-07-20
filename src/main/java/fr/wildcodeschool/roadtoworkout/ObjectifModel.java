package fr.wildcodeschool.roadtoworkout;

public class ObjectifModel {

    private String day;
    private String muscle;
    private String exercice;
    private int serie;
    private int repetitions;
    private int repos;
    private int idObjectif;
    private int idExercices;
    private int idGroupMuscular;
    private String nameGroupMuscular;

    public ObjectifModel(int idObjectif, int idExercices, String day, int idGroupMuscular, String nameGroupMuscular, String muscle, String exercice, int serie, int repetitions, int repos) {
        this.idObjectif = idObjectif;
        this.idExercices = idExercices;
        this.day = day;
        this.muscle = muscle;
        this.idGroupMuscular = idGroupMuscular;
        this.nameGroupMuscular = nameGroupMuscular;
        this.exercice = exercice;
        this.serie = serie;
        this.repetitions = repetitions;
        this.repos = repos;
    }


    public int getIdGroupMuscular() {
        return idGroupMuscular;
    }

    public void setIdGroupMuscular(int idGroupMuscular) {
        this.idGroupMuscular = idGroupMuscular;
    }

    public String getNameGroupMuscular() {
        return nameGroupMuscular;
    }

    public void setNameGroupMuscular(String nameGroupMuscular) {
        this.nameGroupMuscular = nameGroupMuscular;
    }

    public int getIdExercices() {
        return idExercices;
    }

    public void setIdExercices(int idExercices) {
        this.idExercices = idExercices;
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

    public String getMuscle() {
        return muscle;
    }

    public void setMuscle(String muscle) {
        this.muscle = muscle;
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
