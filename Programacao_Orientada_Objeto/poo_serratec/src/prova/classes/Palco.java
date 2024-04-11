package prova.classes;

import java.util.ArrayList;
import java.util.List;

public class Palco {
	private String nomeDoPalco; 
	private int capacidade; 
	private Agenda agenda;
	private List <Agenda> showsNaAgenda = new ArrayList();
	
	public Palco (String nomeDoPalco, int capacidade) {
		this.nomeDoPalco = nomeDoPalco;
		this.capacidade = capacidade;
	}
	
	public void adicionarNaAgenda (Agenda agendado) { 
		this.showsNaAgenda.add(agendado);
	}

	@Override
	public String toString() {
		return "Palco: " + nomeDoPalco + "\n >Capacidade:" + capacidade + "\n" + showsNaAgenda;
	}
	
}
