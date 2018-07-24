package fr.wildcodeschool.roadtoworkout;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mysql.jdbc.Driver;

@WebServlet(name = "FormulaireServlet", urlPatterns = "/formulaire")
public class FormulaireServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sexe = request.getParameter("sexe");
        int age = Integer.parseInt(request.getParameter("age"));
        int weight = Integer.parseInt(request.getParameter("poids"));
        int size = Integer.parseInt(request.getParameter("taille"));
        int nbSeances = 0;
        String userName = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        int idObjectif = 1;


        if(userName == null || userName.isEmpty()){
            request.setAttribute("error", "Votre nom est requis");
            this.getServletContext()
                    .getRequestDispatcher("/formulaire.jsp")
                    .forward(request, response);
        } else if(size == 0){
            request.setAttribute("error2", "Champs requis");
            this.getServletContext()
                    .getRequestDispatcher("/formulaire.jsp")
                    .forward(request, response);
        } else {
            Class driverClass = null;
            try {
                driverClass = Class.forName("com.mysql.jdbc.Driver");
                Driver driver = (Driver) driverClass.newInstance();
                DriverManager.registerDriver(driver);
                Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/RoadToWorkOut", "root", "jecode4wcs");

                PreparedStatement preparedStatement = connection
                        .prepareStatement("INSERT INTO user VALUES(null, ?, ?, ?, ?, ?, ?, ?, ?, ?);");

                preparedStatement.setString(1,email);
                preparedStatement.setString(2,password);
                preparedStatement.setString(3,sexe );
                preparedStatement.setInt(4,weight );
                preparedStatement.setInt(5,size );
                preparedStatement.setInt(6, nbSeances);
                preparedStatement.setInt(7,age );
                preparedStatement.setInt(8,idObjectif );
                preparedStatement.setString(9,userName);

                preparedStatement.executeUpdate();

            this.getServletContext().getRequestDispatcher("/programme.jsp").forward(request, response);

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();

                PrintWriter out = response.getWriter();
                out.print(e.getMessage());
            }

        }






    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/formulaire.jsp").forward(request,response);

    }
}
