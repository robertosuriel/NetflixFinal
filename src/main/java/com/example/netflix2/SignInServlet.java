package com.example.netflix2;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "signin", value = "/signin")
public class SignInServlet extends HttpServlet {

    // Configurações do banco de dados
    private final String jdbcUrl = "jdbc:mysql://localhost:3306/banco_de_usuarios";
    private final String jdbcUser = "root";
    private final String jdbcPassword = "$Uriel171217";

    static {
        try {
            // Carregar o driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Logs para verificar a conexão com o banco de dados
            System.out.println("Driver JDBC carregado com sucesso...");
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace(); // Tratar adequadamente as exceções em um ambiente de produção
        }
    }
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/signin.jsp").forward(request, response);
        System.out.println("Passou pelo get..");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String email = request.getParameter("email");
        String password = request.getParameter("senha");

        // Verificar se o email existe e se a senha está correta no banco de dados
        boolean loginSuccessful = false;

        try (Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword)) {
            // Definir a instrução SQL para buscar o usuário pelo email
            String sql = "SELECT senha FROM usuario WHERE email = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, email);
                try (ResultSet resultSet = statement.executeQuery()) {
                    if (resultSet.next()) {
                        // Se o email existe, verificar se a senha está correta
                        String senhaDoBanco = resultSet.getString("senha");
                        if (senhaDoBanco.equals(password)) {
                            // Senha correta
                            loginSuccessful = true;
                            // Iniciar uma sessão
                            HttpSession session = request.getSession();
                            // Definir um atributo de sessão para o email do usuário (opcional)
                            session.setAttribute("email", email);
                        }
                    }
                }
            }
        } catch (SQLException ex) {
            ex.printStackTrace(); // Tratar adequadamente as exceções em um ambiente de produção
        }

        if (loginSuccessful) {
            // Redirecionar o usuário para a página main.jsp após login
            response.sendRedirect("main.jsp");
        } else {
            // Redirecionar o usuário de volta para a página de login com uma mensagem de erro
            response.sendRedirect("signin.jsp?error=1");
        }
    }
}
