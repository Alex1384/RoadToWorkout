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

            ArrayList<ObjectifModel> topBody = new ArrayList<>();
            ArrayList<ObjectifModel> bottomBody = new ArrayList<>();

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

                if (idMusclularGroup  == 1) {
                    topBody.add(objectifModel);
                } else {
                    bottomBody.add(objectifModel);
                }

            }
            request.getSession().setAttribute("topBody", topBody);
            request.getSession().setAttribute("bottomBody", bottomBody);

            this.getServletContext().getRequestDispatcher("/programme.jsp").forward(request, response);


        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
            e.printStackTrace();
        }




    }
}
