package control;

import dao.DAO;
import entity.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginControl", urlPatterns = {"/login"})
public class LoginControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)

            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("user");
        String password = request.getParameter("pass");
        DAO dao = new DAO();


    Account a = dao.login(username, password);
        if (a == null) {
            request.setAttribute("mess", "Wrong user or pass");
            request.getRequestDispatcher("Login.jsp").forward(request, response);
        } else {
            HttpSession session =request.getSession();
            session.setAttribute("acc",a);
            session.setMaxInactiveInterval(1000);
            response.sendRedirect("home");

        }
}}