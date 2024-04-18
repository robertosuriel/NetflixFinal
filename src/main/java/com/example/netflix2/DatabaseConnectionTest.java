package com.example.netflix2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnectionTest {

    public static void main(String[] args) {
        // Configurações do banco de dados
        String jdbcUrl = "jdbc:mysql://localhost:3306/banco_de_usuarios";
        String jdbcUser = "root";
        String jdbcPassword = "$Uriel171217";

        try {
            // Carregar o driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Estabelecer a conexão com o banco de dados
            try (Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword)) {
                // Verificar se a conexão foi bem-sucedida
                if (connection != null) {
                    System.out.println("Conexão com o banco de dados estabelecida com sucesso.");
                } else {
                    System.out.println("Falha ao conectar-se ao banco de dados.");
                }
            }
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }
    }
}
