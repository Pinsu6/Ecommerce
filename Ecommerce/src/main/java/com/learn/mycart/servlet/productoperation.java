package com.learn.mycart.servlet;

import com.learn.mycart.dao.Categorydao;
import com.learn.mycart.dao.Productdao;
import com.learn.mycart.entities.Category;
import com.learn.mycart.entities.Product;
import com.learn.mycart.helpper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig
public class productoperation extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String operarion = request.getParameter("operation");
            
            if (operarion.equals("addcategory")) {
                String title = request.getParameter("title");
                String desc = request.getParameter("description");
                Category c = new Category();
                c.setCategoryTittle(title);
                c.setCategoryDescription(desc);
                Categorydao categorydao = new Categorydao(FactoryProvider.getFactory());
                
                int id = (int) categorydao.saveCategory(c);
                
                if (id > 0) {
                    HttpSession categorymsg = request.getSession();
                    categorymsg.setAttribute("message", "Category Added");
                    response.sendRedirect("admin.jsp");
                }
            } else if (operarion.equals("addproduct")) {
                
                String title = request.getParameter("title");
                String desc = request.getParameter("description");
                int price = Integer.parseInt(request.getParameter("price"));
                int discount = Integer.parseInt(request.getParameter("discount"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                int catid = Integer.parseInt(request.getParameter("catid"));
                Part part = request.getPart("pic");
                
                Product p = new Product();
                Categorydao c = new Categorydao(FactoryProvider.getFactory());
                Category cat = c.getCatid(catid);
                c.getCatid(catid);
                p.setpName(title);
                p.setpDesc(desc);
                p.setpPrice(price);
                p.setpQuantity(quantity);
                p.setCategory(cat);
                p.setpPhoto(part.getSubmittedFileName());
                
                Productdao productdao = new Productdao(FactoryProvider.getFactory());
                
                productdao.saveProduct(p);
               
                
            }
            
        }
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
