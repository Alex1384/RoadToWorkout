package fr.wildcodeschool.roadtoworkout;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

import com.mysql.jdbc.Driver;

@WebServlet(name = "ProfilServlet" , urlPatterns = "/profil")
public class ProfilServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Class driverClass = null;
        try {
            driverClass = Class.forName("com.mysql.jdbc.Driver");
            Driver driver = (Driver) driverClass.newInstance();

            DriverManager.registerDriver(driver);

            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/RoadToWorkOut", "root", "jecode4wcs");
            PreparedStatement preparedStatement = connection
                    .prepareStatement("SELECT * FROM user where id_user  = ?");
            preparedStatement.setInt(1, 1 );


            PreparedStatement preparedStatementweigth = connection
                    .prepareStatement("SELECT * FROM weigth where  = ?");
            preparedStatement.setInt(1, 1 );
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                //TODO : charger le UserModel
                String userName = resultSet.getString("user_name");
                request.setAttribute("name", userName);
            }

            ResultSet resultSetWeigth = preparedStatement.executeQuery();
            while (resultSetWeigth.next()) {
                //TODO : charger le UserModel
            }

        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
            e.printStackTrace();
        }


        this.getServletContext().getRequestDispatcher("/profil.jsp").forward(request, response);

    }
}
