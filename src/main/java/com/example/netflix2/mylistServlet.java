package com.example.netflix2;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "MyListServlet", value = "/MyListServlet")
public class mylistServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcao = request.getParameter("opcao");

        if (opcao != null && opcao.equals("Add")) {
            String email = (String) request.getSession().getAttribute("email");
            String movieUrl = request.getParameter("movieUrl");

            // Adicionar filme favorito
            ConsultasBancoDeDados consultas = new ConsultasBancoDeDados();
            boolean adicionado = consultas.adicionarFavorito(email, movieUrl);

            if (adicionado) {
                response.sendRedirect("mylist.jsp");
            } else {
                // Lógica de tratamento de erro, se necessário
            }
        } else if (opcao != null && opcao.equals("Remove")) {
            String email = (String) request.getSession().getAttribute("email");
            String movieUrl = request.getParameter("filme");

            // Remover filme favorito
            ConsultasBancoDeDados consultas = new ConsultasBancoDeDados();
            boolean removido = consultas.excluirFavorito(email, movieUrl);

            if (removido) {
                response.sendRedirect("mylist.jsp");
            } else {
                // Lógica de tratamento de erro, se necessário
            }
        }
    }
}
