package control;

import dao.DAO;
import entity.Category;
import entity.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeControl", urlPatterns = {"/home"})
public class HomeControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        DAO dao = new DAO();
        List<Category> listC = dao.getAllCategory();
        Product last = dao.getLast();
        List<Product> list =dao.getAllProduct();
        request.setAttribute("listP",list);
        request.setAttribute("listCC", listC);
        request.getRequestDispatcher("Home.jsp").forward(request,response);
    }

}
