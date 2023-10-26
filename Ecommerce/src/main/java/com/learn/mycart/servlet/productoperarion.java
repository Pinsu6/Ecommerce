
package com.learn.mycart.servlet;

import com.learn.mycart.dao.Categorydao;
import com.learn.mycart.entities.Category;
import com.learn.mycart.helpper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class productoperarion extends HttpServlet {

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String title=request.getParameter("title");
           String desc=request.getParameter("description");
           String operarion = request.getParameter("category");
           
          
               Category c = new Category();
               c.setCategoryTittle(title);
               c.setCategoryDescription(desc);
               Categorydao categorydao = new Categorydao(FactoryProvider.getFactory());
               System.out.println("before save");
               int id =(int) categorydao.saveCategory(c);
               
               if(id>0)
               {
                   HttpSession categorymsg = request.getSession();
                   categorymsg.setAttribute("message","Category Added" );
                  response.sendRedirect("admin.jsp");
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