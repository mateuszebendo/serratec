package oficial.exercicios.classes;

public class Pessoa {
	private String name; 
	private String gender;
	private int age;
	private double weight; 
	private double height;
	
	public Pessoa (String name, String gender, int age, double weight, double height){
		this.name = name; 
		this.gender = gender; 
		this.age = age; 
		this.weight = weight; 
		this.height = height;
	}
	
	public String calculaIMC (){
		double imc = (weight)/(height*height);
		if (imc < 18.5){
            return String.format("%.2f - Situação: ABAIXO DO PESO\n", imc);
        }
        if (imc > 18.5 && imc<=24.9){
            return String.format("%.2f - Situação: IDEAL\n", imc);
        }
        if (imc > 25 && imc<=29.9) {
            return String.format("%.2f - Situação: SOBREPESO\n", imc);
        }
        if (imc > 30 && imc<=34.9) {
            return String.format("%.2f - Situação: OBESIDADE GRAU 1\n", imc);
        }
        if (imc > 35 && imc<=39.9) {
            return String.format("%.2f - Situação: OBESIADE GRAU 2\n", imc);
        } 
        return String.format("%.2f - Situação: OBESIDADE GRAU 3\n", imc);
	}
	
	@Override
	public String toString() {
		return String.format("Nome: %s \nGênero: %s \nIdade: %d \nPeso: %.2f \nAltura: %.2f\nIMC: %s", name, gender, age, weight, height, calculaIMC());
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}

}
