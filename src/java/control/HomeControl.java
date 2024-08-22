package control;

import dao.DAO;
import entity.Category;
import entity.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeControl", urlPatterns = {"/home"})
public class HomeControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //b1: get data from dao
        String sortAsc = request.getParameter("sortAsc");
        String sortDesc = request.getParameter("sortDesc");
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();
        Product last = dao.getLast();
        if (sortAsc != null) {
            request.setAttribute("listC", listC);
            request.setAttribute("p", last);
            List<Product> sortedList = dao.getAllProductSortedByPriceAsc();
            request.setAttribute("listP", sortedList);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } else if (sortDesc != null) {
            request.setAttribute("listC", listC);
            request.setAttribute("p", last);
            List<Product> sortedList = dao.getAllProductSortedByPriceDesc();
            request.setAttribute("listP", sortedList);
            request.getRequestDispatcher("Home.jsp").forward(request, response);
        } else {

            //b2: set data to jsp
            request.setAttribute("listP", list);
            request.setAttribute("listC", listC);
            request.setAttribute("p", last);

            request.getRequestDispatcher("Home.jsp").forward(request, response);
        }

        //404 -> url
        //500 -> jsp properties
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        //request.setAttribute("categoryName", dao.getCategoryNameById(request.getParameter("cid")));
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
