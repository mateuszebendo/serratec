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
	
	public static String getDurationString(int minutes, int seconds) {
	    if (seconds < 0 || minutes < 0) return "Invalid value";
	    
	    int totalSeconds = seconds + minutes * 60;
	    
	    int hours = totalSeconds / 3600;
	    int remainingSeconds = totalSeconds % 3600;
	    int minutesPart = remainingSeconds / 60;
	    int secondsPart = remainingSeconds % 60;
	    
	    return String.format("%dh %dm %ds", hours, minutesPart, secondsPart);
	}

	
	public static void main (String [] args) {
		System.out.println(getDurationString(20000));
		System.out.println(getDurationString(3678, 5678));
	}
}
