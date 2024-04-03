package masterclass.java;

public class OverloadTest {
	public static double convertToCentimeters(int height) {
		return (double)(height*2.54);
	}
	public static double convertToCentimeters(int heightFeet, int heightInches) {
		heightInches = heightInches + (heightFeet*12);
		return convertToCentimeters(heightInches);
	}
	public static void main (String[] args) {
		System.out.println("Height in centimeters: " + convertToCentimeters(12) + "cm");
		System.out.print("Height in centimeters: " + convertToCentimeters(5, 10) + "cm");
	}
}
