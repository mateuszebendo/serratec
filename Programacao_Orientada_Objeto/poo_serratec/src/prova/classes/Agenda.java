package prova.classes;
import java.time.LocalDate;
import java.time.LocalTime;

public class Agenda {
	private LocalDate data; 
	private LocalTime horario;
	private Artista artista;
	
	public Agenda (LocalDate data, LocalTime horario, Artista artista) {
		this.data = data; 
		this.horario = horario;
		this.artista = artista;
	}

	@Override
	public String toString() {
		return "\n--> Arstista: " + artista + "\n--> Data: " + data + "\n--> Horario: " + horario + "\n";
	}
	
}
