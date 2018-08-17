package Studentpack1;

public class sports 
{		int regno;
	String name;
	String football;
	String basketball;
	String hockey;
	String fitness_level;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getRegno() {
		return regno;
	}
	public void setRegno(int regno) {
		this.regno = regno;
	}
	public String getFootball() {
		return football;
	}
	public void setFootball(String football) {
		this.football = football;
	}
	public String getBasketball() {
		return basketball;
	}
	public void setBasketball(String basketball) {
		this.basketball = basketball;
	}
	public String getHockey() {
		return hockey;
	}
	public void setHockey(String hockey) {
		this.hockey = hockey;
	}
	public String getFitness_level() {
		return fitness_level;
	}
	public void setFitness_level(String fitness_level) {
		this.fitness_level = fitness_level;
	}
	@Override
	public String toString() {
		return "sports [name=" + name + ", football=" + football + ", basketball=" + basketball + ", hockey=" + hockey
				+ ", fitness_level=" + fitness_level + "]";
	}
	
	
	
	
}
