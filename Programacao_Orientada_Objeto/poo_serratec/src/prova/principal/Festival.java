package prova.principal;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import prova.classes.Agenda;
import prova.classes.Banda;
import prova.classes.Cantor;
import prova.classes.DJ;
import prova.classes.Genero;
import prova.classes.Palco;

public class Festival {
	public static void main(String[] args) {
		
		DJ djCokada = new DJ("DJ Cokada", Genero.FUNK, 876.98);
		Cantor renatoRusso = new Cantor("Renato Russo", Genero.ROCK, 1500);
		Banda mamonasAssassinas = new Banda("Mamonas Assassinas", Genero.ROCK, 1200);
		
		Agenda agendamento1 = new Agenda(LocalDate.of(2004, 04, 04), LocalTime.of(12, 00), djCokada);
		Agenda agendamento2 = new Agenda(LocalDate.of(2004, 04, 04), LocalTime.of(15, 00), renatoRusso);
		Agenda agendamento3 = new Agenda(LocalDate.of(2004, 04, 04), LocalTime.of(18, 00), mamonasAssassinas);
		
		Palco festivalDeInverno = new Palco("Festival de Inverno", 1500);
		festivalDeInverno.adicionarNaAgenda(agendamento1);
		festivalDeInverno.adicionarNaAgenda(agendamento2);
		festivalDeInverno.adicionarNaAgenda(agendamento3);
		
		System.out.println(festivalDeInverno);
		
		DJ djRogerinho = new DJ("DJ Rogerinho", Genero.FUNK, 897.99);
		Cantor cleitaoRasta = new Cantor("Cleitão Rasta", Genero.PAGOFUNK, 8777.90);
		Banda cotacaoInicial = new Banda("Cotação Inicial", Genero.SERTAROCK, 9.99);

		Agenda agendamento11 = new Agenda(LocalDate.of(2007, 04, 15), LocalTime.of(22, 00), djRogerinho);
		Agenda agendamento22 = new Agenda(LocalDate.of(2007, 04, 17), LocalTime.of(23, 00), cleitaoRasta);
		Agenda agendamento33 = new Agenda(LocalDate.of(2007, 04, 23), LocalTime.of(00, 00), cotacaoInicial);
		
		Palco festivalNacionaldeMaripora = new Palco("Festival de Mariporã", 300000);
		festivalNacionaldeMaripora.adicionarNaAgenda(agendamento11);
		festivalNacionaldeMaripora.adicionarNaAgenda(agendamento22);
		festivalNacionaldeMaripora.adicionarNaAgenda(agendamento33);
		
		System.out.println(festivalNacionaldeMaripora);
		
		
		/*String continua = "N";
		
		do {
		
		Scanner leia = new Scanner(System.in);
		
		System.out.println("Digite o nome do Palco: ");
		String novoPalco = leia.next();
		System.out.println("Capacidade do Palco: ");
		leia.next();
		int novaCapacidade = leia.nextInt();
		
		System.out.println("Digite o nome do Artista: ");
		String novoArtista = leia.next();
		System.out.println("Digite o genero musical desse artista: \n 1- ROCK \n 2- SAMBA \n 3 - POP \n 4 - PAGOFUNK ");
		leia.next();
		int opcao = leia.nextInt();
		Genero generoArtista = Genero.ROCK;
		switch(opcao) {
		  case 1:
		    generoArtista = Genero.ROCK;
		    break;
		  case 2:
		    generoArtista = Genero.SAMBA;
		    break;
		  case 3:
		    generoArtista = Genero.POP;
		    break;
		  case 4:
		    generoArtista = Genero.FUNK;
		    break;
		}
		
		System.out.println("Cache do Artista: ");
		leia.next();
		double novoCache = leia.nextDouble();
		
		leia.nextLine();
		
		System.out.println("Dia da apresentação do Artista: ");
		int dia = leia.nextInt();
		System.out.println("Mês da apresentação do Artista: ");
		int mes = leia.nextInt();
		System.out.println("Ano da apresentação do Artista: ");
		int ano = leia.nextInt();
		
		LocalDate dataFinal = LocalDate.of(ano, dia, mes);
		
		System.out.println("Hora da apresentação: ");
		int hora = leia.nextInt();
		System.out.println("Minuto da apresentação: ");
		int minuto = leia.nextInt();
		
		LocalTime horaFinal = LocalTime.of(hora, minuto);
		
		
		System.out.println("Escolha a opcao referente ao que esse artista é: \n 1- DJ \n 2- Banda \n 3 - Cantor");
		leia.next();
		opcao = leia.nextInt();
		
		List <DJ> DJs = new ArrayList<>();
		List <Banda> Bandas = new ArrayList<>();
		List <Cantor> Cantores = new ArrayList<>();
		
		switch(opcao) {
		  case 1:
		    DJ novoDJ = new DJ(novoArtista, generoArtista, novoCache);
			Agenda showDJ = new Agenda(dataFinal, horaFinal, novoDJ);
		    break;
		  case 2:
			Banda novaBanda = new Banda(novoArtista, generoArtista, novoCache);
			Agenda showBanda = new Agenda(dataFinal, horaFinal, novaBanda);
		  case 3:
			Cantor novoCantor = new Cantor(novoArtista, generoArtista, novoCache);
			Agenda showCantor = new Agenda(dataFinal, horaFinal, novoCantor);
		    break;
		}
		
		Agenda 
		
		
		System.out.println("Continuar? [S]/[N]");
		}while(continua.equalsIgnoreCase("N"));
		
		Palco palcoFinal = new Palco(novoPalco, novaCapacidade, )
		
	} **/
	}
}
