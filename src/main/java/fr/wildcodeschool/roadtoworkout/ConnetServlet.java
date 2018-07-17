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
        //this.getServletContext().getRequestDispatcher("/Connection.jsp").forward(request, response);

        String emailValue = request.getParameter("email");

       /* if(emailValue == null || emailValue.isEmpty()){
            PrintWriter out = response.getWriter();
            out.print("Veillez renseigner votre email");
        }
        */
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.getServletContext().getRequestDispatcher("/Connection.jsp").forward(request, response);

    }
}
