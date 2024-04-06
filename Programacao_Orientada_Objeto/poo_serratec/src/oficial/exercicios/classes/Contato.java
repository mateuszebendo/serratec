package oficial.exercicios.classes;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Contato {
    private String nome;
    private List<Telefone> telefones = new ArrayList<>();
    private Endereco endereco;

    public String getNome() {
        return nome;
    }

    public List<Telefone> getTelefones() {
        return telefones;
    }

    public Endereco getEndereco() {
        return endereco;
    }

    public void setTelefones(List<Telefone> telefones) {
        this.telefones = telefones;
    }

    public Contato(String nome,  Endereco endereco) {
        this.nome = nome;
        this.endereco = endereco;
    }

    @Override
    public String toString() {
        return  nome + " | " + telefones +
                " | " + endereco;
    }

    public void mostrarTelefones(){
        for (Telefone t : telefones){
            System.out.println("\nTelefones:" + t);
        }
    }
    public void adicionaTelefone(Telefone telefone){
        this.telefones.add(telefone);
    }
}