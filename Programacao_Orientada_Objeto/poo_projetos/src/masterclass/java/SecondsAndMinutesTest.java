package masterclass.java;

public class SecondsAndMinutesTest {
	public static String getDurationString(int seconds) {
		if(seconds < 0) return "Invalid value";
		int minutes = seconds/60;
		int hours = (seconds-59)/3600;
		minutes = minutes%60;
		seconds = seconds%60;
		return String.format("%dh %dm %ds", hours, minutes, seconds);
	}
	
	public static void main (String [] args) {
		System.out.println(getDurationString(20000));
	}
}
