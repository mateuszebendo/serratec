import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class bancoDeDados {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/postgres";
        String user = "postgres";
        String password = "1212";

        try (Connection connection = DriverManager.getConnection(url, user, password)) {
            System.out.println("Conexão bem-sucedida!");

            // Criando uma declaração (statement) para executar a consulta
            Statement statement = connection.createStatement();

            // Executando a consulta SQL
            String sql = "select * from quizzes_empresas.public.funcionario;";
            ResultSet resultSet = statement.executeQuery(sql);

            // Processando os resultados da consulta
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String nome = resultSet.getString("nome");
                // Processar outros campos conforme necessário
                System.out.println("ID: " + id + ", Nome: " + nome);
            }
        } catch (SQLException e) {
            System.err.println("Erro ao conectar ao banco de dados: " + e.getMessage());
        }
    }
}
