package miele;

	import java.sql.Connection; 
	import java.sql.DriverManager;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet; 
	import java.sql.SQLException; 
	import java.sql.Statement;

	public class miele {
	    private String url = "jdbc:postgresql://localhost:5433/bdTurmas";
	    private String usuario = "postgres";
	    private String senha = "1212";
	    Connection conexao = null;
	    Statement stmt = null;
	    
	    public void conectar() {
	        try {
	            Class.forName("org.postgresql.Driver");
	            conexao = DriverManager.getConnection(url, usuario, senha);
	            stmt = conexao.createStatement();
	            System.out.println("miele");
	        } catch(ClassNotFoundException ex) {
	            System.out.println("Driver do banco não localizado");
	        } catch (SQLException ex) {
	            System.out.println("Erro ao conectar ao banco de dados: " + ex.getMessage());
	        } 
	    }
	    
	    public String conectarUsuario(String login, String senha) {
	        ResultSet usuarioConectado = null;
	        try {
	        	usuarioConectado = stmt.executeQuery("SELECT email, senha FROM postgres.public.funcionarios WHERE email = '" + login + "';");
	        	
	            if (usuarioConectado.next()) {
	                String email = usuarioConectado.getString("email");
	                String senhaRegistrada = usuarioConectado.getString("senha");
	                return email+senhaRegistrada;
	            } else {
	            	String usuarioNaoEncontrado = "Usuário não encontrado";
	                return usuarioNaoEncontrado;
	            }
	        } catch (SQLException e) {
	        	String erro = "Erro ao conectar usuário: " + e.getMessage();
	            return erro;
	        }
	    }

	    
	    public void fechaConexao () {
	        try {
	            if (conexao != null) {
	                conexao.close();
	            }
	        } catch (SQLException ex) {
	            System.out.println("Erro ao fechar a conexão: " + ex.getMessage());
	        }
	    }
	    
	    public static void main(String[] args) {
	        miele banco = new miele(); // Cria uma instância da classe bancoDeDados
	        banco.conectar(); // Conecta ao banco de dados

	        // Exemplo de uso do método conectarUsuario

	        banco.fechaConexao(); // Fecha a conexão com o banco de dados
	    }
	}

}
