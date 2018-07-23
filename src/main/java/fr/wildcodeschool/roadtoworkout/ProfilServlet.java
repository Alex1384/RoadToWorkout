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

        Class driverClassProfil = null;
        try {
            driverClassProfil = Class.forName("com.mysql.jdbc.Driver");
            Driver driverProfil = (Driver) driverClassProfil.newInstance();

            DriverManager.registerDriver(driverProfil);

            Connection connectionProfil = DriverManager.getConnection("jdbc:mysql://localhost:3306/RoadToWorkOut", "root", "jecode4wcs");
            PreparedStatement preparedStatementProfil = connectionProfil
                    .prepareStatement("SELECT * FROM user where id_user  = ?");
            preparedStatementProfil.setInt(1, 1 );


            PreparedStatement preparedStatementweigth = connectionProfil
                    .prepareStatement("SELECT * FROM weigth where  = ?");
            preparedStatementProfil.setInt(1, 1 );
            ResultSet resultSetProfil = preparedStatementProfil.executeQuery();
            while (resultSetProfil.next()) {
                //TODO : charger le UserModel
                String userName = resultSetProfil.getString("user_name");
                request.setAttribute("name", userName);
            }

            ResultSet resultSetWeigth = preparedStatementProfil.executeQuery();
            while (resultSetWeigth.next()) {
                //TODO : charger le UserModel
            }

        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
            e.printStackTrace();
        }


        this.getServletContext().getRequestDispatcher("/profil.jsp").forward(request, response);

    }
}
