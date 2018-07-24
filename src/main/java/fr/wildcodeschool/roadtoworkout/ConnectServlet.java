package fr.wildcodeschool.roadtoworkout;

import com.mysql.jdbc.Driver;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "ConnectServlet", urlPatterns = "/connect")
public class ConnectServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Encodage
        request.setCharacterEncoding("UTF-8");

        String emailValue = request.getParameter("emailValue");
        String pass = request.getParameter("pass");

       if(emailValue == null || emailValue.isEmpty() || pass == null || pass.isEmpty()){
           request.setAttribute("error", "Adresse email et mot de passe requis");
           this.getServletContext()
                   .getRequestDispatcher("/connection.jsp")
                   .forward(request, response);
        }
        else {
           Class driverClass = null;
           try {
               driverClass = Class.forName("com.mysql.jdbc.Driver");
               Driver driver = (Driver) driverClass.newInstance();
               DriverManager.registerDriver(driver);
               Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/RoadToWorkOut", "root", "jecode4wcs");

               PreparedStatement preparedStatement = connection
                       .prepareStatement("INSERT INTO user VALUES(null, ?, ?, ?, ?, ?, ?, ?, ?);");

               preparedStatement.setString(1, emailValue);
               preparedStatement.setString(2, pass);
               preparedStatement.setString(3, "F");
               preparedStatement.setInt(4, 9);
               preparedStatement.setInt(5, 8);
               preparedStatement.setInt(6, 45);
               preparedStatement.setInt(7, 1);
               preparedStatement.setInt(8, 1);

               preparedStatement.executeUpdate();

               HttpSession sessionemail = request.getSession(true);
               sessionemail.setAttribute("emailUser", emailValue);
               response.sendRedirect("/programme");

           } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e) {
               e.printStackTrace();
               PrintWriter out = response.getWriter();
               out.println(e.getMessage());
           }

       }
       }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sessionemail = request.getSession(true);
        if(sessionemail == null) {
            this.getServletContext().getRequestDispatcher("/connection.jsp").forward(request, response);
        }

        else {
            sessionemail.getAttribute("emailUser");
            response.sendRedirect("/home");
        }

    }
}
