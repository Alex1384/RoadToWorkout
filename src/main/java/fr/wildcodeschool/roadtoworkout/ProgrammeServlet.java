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
                    .prepareStatement("SELECT * FROM objectif" +
                            " INNER JOIN objectif_exercice ON objectif_exercice.id_objectif = objectif.id_objectif" +
                            " INNER JOIN exercice ON exercice.id_exercice = objectif_exercice.id_exercice" +
                            " INNER JOIN groupe_musculaire ON groupe_musculaire.id_groupe_musculaire = exercice.id_groupe_musculaire" +
                            " WHERE objectif.id_objectif = ?");
            preparedStatementOne.setInt(1, idOfObjectif);
            ResultSet resultSet = preparedStatementOne.executeQuery();

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
                int idExercice = resultSet.getInt("id_exercice");
                String jour = resultSet.getString("jour");
                String muscle = resultSet.getString("muscle");
                String exercice = resultSet.getString("exercice");
                int serie = resultSet.getInt("serie");
                int repetitions = resultSet.getInt("repetitions");
                int repos = resultSet.getInt("repos");
                int idMusclularGroup = resultSet.getInt("id_groupe_musculaire");
                String nameMuscularGroup = resultSet.getString("name_groupe");

                ObjectifModel objectifModel = new ObjectifModel(idOfObjectif, idExercice, jour, idMusclularGroup, nameMuscularGroup, muscle, exercice, serie, repetitions, repos);

                if (jour.equals("lundi")) {
                    if (nameMuscularGroup.equals("Repos")){
                        request.getSession().setAttribute("muscularGroupTopMonday", nameMuscularGroup);
                        request.getSession().setAttribute("muscularGroupBottomMonday", nameMuscularGroup);

                    } else {
                        if (idMusclularGroup  == 1) {
                            topBodyMonday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupTopMonday", nameMuscularGroup);
                        } else {
                            bottomBodyMonday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupBottomMonday", nameMuscularGroup);
                        }
                    }

                } else if (jour.equals("mardi")) {
                    if (nameMuscularGroup.equals("Repos")){
                        request.getSession().setAttribute("muscularGroupTopTuesday", nameMuscularGroup);
                        request.getSession().setAttribute("muscularGroupBottomTuesday", nameMuscularGroup);
                    }
                    else {
                        if (idMusclularGroup  == 1) {
                            topBodyTuesday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupTopTuesday", nameMuscularGroup);
                        } else {
                            bottomBodyTuesday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupBottomTuesday", nameMuscularGroup);
                        }
                    }

                } else if (jour.equals("mercredi")) {
                    if (nameMuscularGroup.equals("Repos")){
                        request.getSession().setAttribute("muscularGroupTopWednesday", nameMuscularGroup);
                        request.getSession().setAttribute("muscularGroupBottomWednesday", nameMuscularGroup);
                    }
                    else {
                        if (idMusclularGroup  == 1) {
                            topBodyWednesday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupTopWednesday", nameMuscularGroup);
                        } else {
                            bottomBodyWednesday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupBottomWednesday", nameMuscularGroup);
                        }
                    }


                } else if (jour.equals("jeudi")) {
                    if (nameMuscularGroup.equals("Repos")){
                        request.getSession().setAttribute("muscularGroupTopThursday", nameMuscularGroup);
                        request.getSession().setAttribute("muscularGroupBottomThursday", nameMuscularGroup);
                    }
                    if (idMusclularGroup  == 1) {
                        topBodyThursday.add(objectifModel);
                        request.getSession().setAttribute("muscularGroupTopThursday", nameMuscularGroup);
                    } else {
                        bottomBodyThursday.add(objectifModel);
                        request.getSession().setAttribute("muscularGroupBottomThursday", nameMuscularGroup);
                    }

                } else if (jour.equals("vendredi")) {
                    if (nameMuscularGroup.equals("Repos")){
                        request.getSession().setAttribute("muscularGroupTopFriday", nameMuscularGroup);
                        request.getSession().setAttribute("muscularGroupBottomFriday", nameMuscularGroup);
                    }
                    else {
                        if (idMusclularGroup  == 1) {
                            topBodyFriday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupTopFriday", nameMuscularGroup);
                        } else {
                            bottomBodyFriday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupBottomFriday", nameMuscularGroup);
                        }
                    }


                } else if (jour.equals("samedi")) {
                    if (nameMuscularGroup.equals("Repos")){
                        request.getSession().setAttribute("muscularGroupTopSaturday", nameMuscularGroup);
                        request.getSession().setAttribute("muscularGroupBottomSaturday", nameMuscularGroup);
                    }
                    else {
                        if (idMusclularGroup  == 1) {
                            request.getSession().setAttribute("muscularGroupTopSaturday", nameMuscularGroup);
                            topBodySaturday.add(objectifModel);
                        } else {
                            bottomBodySaturday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupBottomSaturday", nameMuscularGroup);
                        }
                    }


                } else if (jour.equals("dimanche")) {
                    if (nameMuscularGroup.equals("Repos")){
                        request.getSession().setAttribute("muscularGroupTopSunday", nameMuscularGroup);
                        request.getSession().setAttribute("muscularGroupBottomSunday", nameMuscularGroup);
                    }
                    else {
                        if (idMusclularGroup  == 1) {
                            topBodySunday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupTopSunday", nameMuscularGroup);
                        } else {
                            bottomBodySunday.add(objectifModel);
                            request.getSession().setAttribute("muscularGroupBottomSunday", nameMuscularGroup);
                        }
                    }

                }

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
