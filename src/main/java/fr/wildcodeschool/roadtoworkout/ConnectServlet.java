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
import java.sql.*;

@WebServlet(name = "ConnectServlet", urlPatterns = "/connect")
public class ConnectServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Encodage
        request.setCharacterEncoding("UTF-8");

        String emailValue = request.getParameter("emailValue");
        String pass = request.getParameter("pass");

        if (emailValue == null || emailValue.isEmpty() || pass == null || pass.isEmpty()) {
            request.setAttribute("error", "Adresse email et mot de passe requis");
            this.getServletContext()
                    .getRequestDispatcher("/connection.jsp")
                    .forward(request, response);
        } else {
            Class driverClass = null;
            try {
                driverClass = Class.forName("com.mysql.jdbc.Driver");
                Driver driver = (Driver) driverClass.newInstance();
                DriverManager.registerDriver(driver);
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/RoadToWorkOut", "root", "jecode4wcs");

                PreparedStatement preparedStatement = connection
                        .prepareStatement("SELECT * FROM user WHERE email_user = ? AND password_user = ?");
                preparedStatement.setString(1, emailValue);
                preparedStatement.setString(2, pass);
                ResultSet resultSet = preparedStatement.executeQuery();
                if (resultSet.next()) {
                    String emailUser = resultSet.getString("email_user");
                    String passwordUser = resultSet.getString("password_user");
                    HttpSession sessionemail = request.getSession(true);
                    sessionemail.setAttribute("emailUser", emailValue);
                    response.sendRedirect("/programme");
                    return;
                }
                request.setAttribute("badId", "Adresse email et mot de passe incorrects");
                this.getServletContext()
                        .getRequestDispatcher("/connection.jsp")
                        .forward(request, response);


            } catch (IllegalAccessException | InstantiationException | ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                PrintWriter out = response.getWriter();
                out.println(e.getMessage());
            }

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession sessionemail = request.getSession(true);
        if (sessionemail == null) {
            this.getServletContext().getRequestDispatcher("/connection.jsp").forward(request, response);
        } else {
            sessionemail.getAttribute("emailUser");
            response.sendRedirect("/connection.jsp");
        }


    }
}
