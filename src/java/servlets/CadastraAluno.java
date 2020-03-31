/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.AlunoDAO;
import model.Aluno;

/**
 *
 * @author Mateus
 */
public class CadastraAluno extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Aluno aluno = new Aluno();
            String nome = (String) request.getParameter("nNome");
            String dataNascimento = (String) request.getParameter("nDataNascimento");
            String cep = (String) request.getParameter("nCep");
            String endereco = (String) request.getParameter("nEndereco");
            String email = (String) request.getParameter("nEmail");
            String sexo = (String) request.getParameter("sexo");
            String telefone = (String) request.getParameter("nTelefone");
            String atividade = (String) request.getParameter("atividade");
            
            aluno.setNome(nome);
            aluno.setDataNascimento(dataNascimento);
            aluno.setCep(cep);
            aluno.setEndereco(endereco);
            aluno.setEmail(email);
            aluno.setSexo(sexo);
            aluno.setTelefone(telefone);
            aluno.setAtividade(atividade);
            

            AlunoDAO.insereAluno(aluno);
            RequestDispatcher rd = request.getRequestDispatcher("Salvo.html");
            rd.forward(request, response);
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
