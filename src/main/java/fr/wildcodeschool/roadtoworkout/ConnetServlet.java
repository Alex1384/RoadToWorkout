package fr.wildcodeschool.roadtoworkout;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ConnetServlet", urlPatterns = "/connect")
public class ConnetServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String emailValue = request.getParameter("emailValue");

       if(emailValue == null || emailValue.isEmpty()){
           request.setAttribute("error", "Adresse email requise");
           this.getServletContext()
                   .getRequestDispatcher("/connection.jsp")
                   .forward(request, response);
        }
        else {
           PrintWriter outA = response.getWriter();
           outA.println("Ok pour la suite, reste a faire la connection BDD");
       }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/connection.jsp").forward(request, response);

    }
}
