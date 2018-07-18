package fr.wildcodeschool.roadtoworkout;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

import com.mysql.jdbc.Driver;

@WebServlet(name = "ProgrammeServlet", urlPatterns = {"/programme"})
public class ProgrammeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();


        int idOfObjectif = 1;

        Class driverClass = null;
        ArrayList<ObjectifModel> objectifModelArrayList = new ArrayList<>();
        try {
            driverClass = Class.forName("com.mysql.jdbc.Driver");
            Driver driver = (Driver) driverClass.newInstance();
            DriverManager.registerDriver(driver);
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/RoadToWorkOut", "root", "jecode4wcs");

            PreparedStatement preparedStatementOne = connection
                    .prepareStatement("SELECT * FROM Objectif" +
                            " INNER JOIN Effectuer ON Effectuer.id_objectif = Objectif.id_objectif" +
                            " INNER JOIN Exercices ON Exercices.id_exercices = Effectuer.id_exercices" +
                            " INNER JOIN Groupe_Musculaire ON Groupe_Musculaire.id_groupe_musculaire = Exercices.id_groupe_musculaire" +
                            " WHERE Objectif.id_objectif = ?");
            preparedStatementOne.setInt(1, idOfObjectif);
            ResultSet resultSet = preparedStatementOne.executeQuery();

            //ArrayList<ObjectifModel> topBody = new ArrayList<>();
            //ArrayList<ObjectifModel> bottomBody = new ArrayList<>();

            //ArrayList de chaque jour :
            //Lundi :
            ArrayList<ObjectifModel> topBodyMonday = new ArrayList<>();
            ArrayList<ObjectifModel> bottomBodyMonday = new ArrayList<>();
            //Mardi :
            ArrayList<ObjectifModel> topBodyTuesday = new ArrayList<>();
            ArrayList<ObjectifModel> bottomBodyTuesday = new ArrayList<>();
            //Mercredi :
            ArrayList<ObjectifModel> topBodyWednesday = new ArrayList<>();
            ArrayList<ObjectifModel> bottomBodyWednesday = new ArrayList<>();
            //Jeudi :
            ArrayList<ObjectifModel> topBodyThursday = new ArrayList<>();
            ArrayList<ObjectifModel> bottomBodyThursday = new ArrayList<>();
            //Vendredi :
            ArrayList<ObjectifModel> topBodyFriday = new ArrayList<>();
            ArrayList<ObjectifModel> bottomBodyFriday= new ArrayList<>();
            //Samedi :
            ArrayList<ObjectifModel> topBodySaturday = new ArrayList<>();
            ArrayList<ObjectifModel> bottomBodySaturday = new ArrayList<>();
            //Dimanche :
            ArrayList<ObjectifModel> topBodySunday = new ArrayList<>();
            ArrayList<ObjectifModel> bottomBodySunday = new ArrayList<>();


            while (resultSet.next()) {

                String nameObjectif = resultSet.getString("name_objectif");

                int idExercice = resultSet.getInt("id_exercices");
                String jour = resultSet.getString("jour");
                String muscle = resultSet.getString("groupe_muscle");
                String exercice = resultSet.getString("exercice");
                int serie = resultSet.getInt("serie");
                int repetitions = resultSet.getInt("repetitions");
                int repos = resultSet.getInt("repos");
                int idMusclularGroup = resultSet.getInt("id_groupe_musculaire");
                String nameMuscularGroup = resultSet.getString("name_groupe");

                ObjectifModel objectifModel = new ObjectifModel(idOfObjectif, idExercice, jour, idMusclularGroup, nameMuscularGroup, muscle, exercice, serie, repetitions, repos);

                if (jour.equals("lundi")) {
                    if (idMusclularGroup  == 1) {
                        topBodyMonday.add(objectifModel);
                    } else {
                        bottomBodyMonday.add(objectifModel);
                    }

                } else if (jour.equals("mardi")) {
                    if (idMusclularGroup  == 1) {
                        topBodyTuesday.add(objectifModel);
                    } else {
                        bottomBodyTuesday.add(objectifModel);
                    }

                } else if (jour.equals("mercredi")) {
                    if (idMusclularGroup  == 1) {
                        topBodyWednesday.add(objectifModel);
                    } else {
                        bottomBodyWednesday.add(objectifModel);
                    }

                } else if (jour.equals("jeudi")) {
                    if (idMusclularGroup  == 1) {
                        topBodyThursday.add(objectifModel);
                    } else {
                        bottomBodyThursday.add(objectifModel);
                    }

                } else if (jour.equals("vendredi")) {
                    if (idMusclularGroup  == 1) {
                        topBodyFriday.add(objectifModel);
                    } else {
                        bottomBodyFriday.add(objectifModel);
                    }

                } else if (jour.equals("samedi")) {
                    if (idMusclularGroup  == 1) {
                        topBodySaturday.add(objectifModel);
                    } else {
                        bottomBodySaturday.add(objectifModel);
                    }

                } else if (jour.equals("dimanche")) {
                    if (idMusclularGroup  == 1) {
                        topBodySunday.add(objectifModel);
                    } else {
                        bottomBodySunday.add(objectifModel);
                    }

                }

                /*
                if (idMusclularGroup  == 1) {
                    topBody.add(objectifModel);
                } else {
                    bottomBody.add(objectifModel);
                }
                */

                request.getSession().setAttribute("nameObjectif", nameObjectif);

            }

            request.getSession().setAttribute("topBodyMonday", topBodyMonday);
            request.getSession().setAttribute("bottomBodyMonday", bottomBodyMonday);
            request.getSession().setAttribute("topBodyTuesday", topBodyTuesday);
            request.getSession().setAttribute("bottomBodyTuesday", bottomBodyTuesday);
            request.getSession().setAttribute("topBodyWednesday", topBodyWednesday);
            request.getSession().setAttribute("bottomBodyWednesday", bottomBodyWednesday);
            request.getSession().setAttribute("topBodyThursday", topBodyThursday);
            request.getSession().setAttribute("bottomBodyThursday", bottomBodyThursday);
            request.getSession().setAttribute("topBodyFriday", topBodyFriday);
            request.getSession().setAttribute("bottomBodyFriday", bottomBodyFriday);
            request.getSession().setAttribute("topBodySaturday", topBodySaturday);
            request.getSession().setAttribute("bottomBodySaturday", bottomBodySaturday);
            request.getSession().setAttribute("topBodySunday", topBodySunday);
            request.getSession().setAttribute("bottomBodySunday", bottomBodySunday);

            this.getServletContext().getRequestDispatcher("/programme.jsp").forward(request, response);


        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
            e.printStackTrace();
        }




    }
}
