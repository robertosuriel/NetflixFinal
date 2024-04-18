package com.example.netflix2;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ConsultasBancoDeDados {
    private Connection connection;
    private final String url = "jdbc:mysql://localhost:3306/banco_de_usuarios";
    private String user = "root";
    private String password = "$Uriel171217";

    public ConsultasBancoDeDados() {
        try {
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Método para verificar se o email já pertence à tabela de usuários
    public boolean verificarEmail(String email) {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT COUNT(*) FROM usuarios WHERE email = ?");
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();
            resultSet.next();
            int count = resultSet.getInt(1);
            return count > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Método para inserir novos usuários
    public boolean inserirUsuario(String email, String senha) {
        try {
            // Verifica se o email já existe na tabela de usuários
            if (verificarEmail(email)) {
                System.out.println("O email '" + email + "' já existe na tabela de usuários.");
                return false;
            }

            // Insere o novo usuário na tabela de usuários
            PreparedStatement usuario = connection.prepareStatement("INSERT INTO favoritos (email, urls) VALUES (?,Null)");
            usuario.setString(1, email);
            usuario.executeUpdate();
            PreparedStatement statement = connection.prepareStatement("INSERT INTO usuarios (email, senha) VALUES (?,?)");
            statement.setString(1, email);
            statement.setString(2, senha);
            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }


    // Método para adicionar filmes favoritos pelo URL
    public boolean adicionarFavorito(String email, String url) {
        try {
            PreparedStatement statement = connection.prepareStatement("UPDATE FAVORITOS SET urls = CONCAT(urls, ?) WHERE EMAIL = ?");
            statement.setString(1, "," + url);
            statement.setString(2, email);
            int rowsUpdated = statement.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Método para excluir filmes favoritos
    public boolean excluirFavorito(String email, String url) {
        try {
            PreparedStatement statement = connection.prepareStatement("UPDATE FAVORITOS SET urls = REPLACE(urls, ?, '') WHERE EMAIL = ?");
            statement.setString(1, url);
            statement.setString(2, email);
            int rowsUpdated = statement.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Método para autenticar usuario
    public boolean autenticarUsuario(String email, String senha) {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT COUNT(*) FROM USUARIOS WHERE EMAIL = ? AND SENHA = ?");
            statement.setString(1, email);
            statement.setString(2, senha);
            ResultSet resultSet = statement.executeQuery();
            resultSet.next();
            int count = resultSet.getInt(1);
            return count > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // Método para autenticar usuario
    public String[] showFavoritos(String email) {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT urls FROM FAVORITOS WHERE EMAIL = ?");
            statement.setString(1, email);
            ResultSet resultSet = statement.executeQuery();

            // Verifica se a consulta retornou algum resultado
            if (resultSet.next()) {
                // Recupera o valor da coluna 'urls' do resultado
                String urls = resultSet.getString("urls");
                // Divide a string em um vetor usando a vírgula como delimitador
                String[] urlsArray = urls.split(",");
                // Retorna o vetor
                return urlsArray;
            } else {
                // Se a consulta não retornou nenhum resultado, retorna um vetor vazio
                return new String[0];
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null; // ou lança uma exceção, dependendo do caso
        }
    }


    public String[] showFilmes() {
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT nome FROM filmes");
            ResultSet resultSet = statement.executeQuery();

            // Lista para armazenar os nomes dos filmes
            List<String> nomesFilmes = new ArrayList<>();

            // Itera sobre o resultado da consulta
            while (resultSet.next()) {
                // Recupera o nome do filme e adiciona à lista
                String nomeFilme = resultSet.getString("nome");
                nomesFilmes.add(nomeFilme);
            }

            // Converte a lista para um array de strings
            String[] arrayNomesFilmes = nomesFilmes.toArray(new String[0]);

            // Retorna o array de nomes dos filmes
            return arrayNomesFilmes;

        } catch (SQLException e) {
            e.printStackTrace();
            return null; // ou lança uma exceção, dependendo do caso
        }
    }




    public static void main(String[] args) {
        ConsultasBancoDeDados consultas = new ConsultasBancoDeDados();

        // Teste para verificar se o email já existe na tabela de usuários
        String email1 = "david.souza@ime.eb.br";
        System.out.println("O email '" + email1 + "' já existe na tabela de usuários? " + consultas.verificarEmail(email1));

        // Teste para inserir um novo usuário
        String novoEmail = "joao@exemplo.com";
        String senha = "senha123";
        if (!consultas.verificarEmail(novoEmail)) {
            boolean inserido = consultas.inserirUsuario(novoEmail, senha);
            System.out.println("Novo usuário inserido com sucesso? " + inserido);
        } else {
            System.out.println("O email já existe na tabela de usuários.");
        }

        // Teste para autenticar usuário
        String emailAutenticar = "david.souza@ime.eb.br";
        String senhaAutenticar = "1234";
        System.out.println("Usuário autenticado? " + consultas.autenticarUsuario(emailAutenticar, senhaAutenticar));

        // Teste para adicionar filmes favoritos
        String emailFavorito = "david@ime.com";
        String urlFavorito = "images/large-movie4.jpg";
        boolean adicionado = consultas.adicionarFavorito(emailFavorito, urlFavorito);
        System.out.println("Filme favorito adicionado? " + adicionado);

        // Teste para excluir filmes favoritos
        String urlExcluir = "images/large-movie3.jpg";
        boolean excluido = consultas.excluirFavorito(emailFavorito, urlExcluir);
        System.out.println("Filme favorito excluído? " + excluido);

        // Teste para mostrar os filmes favoritos de um usuário
        String emailMostrar = "david@ime.com";
        String[] favoritos = consultas.showFavoritos(emailMostrar);
        System.out.println("Filmes favoritos de " + emailMostrar + ":");
        for (String favorito : favoritos) {
            System.out.println(favorito);
        }
    }
}
