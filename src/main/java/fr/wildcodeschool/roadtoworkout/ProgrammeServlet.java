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

        //String idObjectif = request.getParameter("idObjectif");
        Class driverClass = null;
        ArrayList<ObjectifModel> objectifModelArrayList = new ArrayList<>();
        try {
            driverClass = Class.forName("com.mysql.jdbc.Driver");
            Driver driver = (Driver) driverClass.newInstance();
            DriverManager.registerDriver(driver);
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/RoadToWorkOut", "root", "jecode4wcs");

            PreparedStatement preparedStatement = connection
                    .prepareStatement("SELECT * FROM Objectif");
            //preparedStatement.setString(1, "masse");
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int idObjectif = resultSet.getInt("id_objectif");
                String day = resultSet.getString("jour");
                String muscularGroup = resultSet.getString("groupe_muscle");
                String exercice = resultSet.getString("exercice");
                int serie = resultSet.getInt("serie");
                int repetitions = resultSet.getInt("repetitions");
                int repos = resultSet.getInt("repos");

                ObjectifModel objectifModel = new ObjectifModel(idObjectif, day, muscularGroup, exercice, serie, repetitions, repos);
                objectifModelArrayList.add(objectifModel);
            }

            request.getSession().setAttribute("key", objectifModelArrayList);

            this.getServletContext().getRequestDispatcher("/programme.jsp").forward(request, response);


        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
            e.printStackTrace();
        }




    }
}
