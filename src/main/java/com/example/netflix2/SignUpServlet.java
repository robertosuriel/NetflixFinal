package com.example.netflix2;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "signup", value = "/signup")
public class SignUpServlet extends HttpServlet {


    // Configurações do banco de dados
    private final String jdbcUrl = "jdbc:mysql://localhost:3306/banco_de_usuarios";
    private final String jdbcUser = "root";
    private final String jdbcPassword = "$Uriel171217";

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // alguma coisa aqui
        System.out.println("passou no get..");


        request.getRequestDispatcher("/signup.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String email = request.getParameter("email");
        String password = request.getParameter("senha");

        // Perform necessary processing with the form data
        // For example, store it in a database
        try {
            // Carregar o driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Logs para verificar a conexão com o banco de dados
            System.out.println("Conectando ao banco de dados...");

            // Estabelecer a conexão com o banco de dados
            try (Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword)) {
                // Definir a instrução SQL para inserir os dados do usuário na tabela usuario
                String sql = "INSERT INTO usuario (email, senha) VALUES (?, ?)";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, email);
                    statement.setString(2, password);

                    // Executar a instrução SQL para inserção
                    int rowsInserted = statement.executeUpdate();
                    System.out.println("Inserindo dados no banco de dados...");
                    if (rowsInserted > 0) {
                        System.out.println("Um novo usuário foi inserido com sucesso.");
                    }
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace(); // Tratar adequadamente as exceções em um ambiente de produção
        }

        // Redirecionar o usuário para uma nova página após processar o formulário
        response.sendRedirect("signin.jsp");
    }
}
