package Studentpack1;

public class medical 
{
	int regno;
	String name;
	String blood_group;
	String immunization_dates;
	String allergies;
	String abnormalities;
	public int getRegno() {
		return regno;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setRegno(int regno) {
		this.regno = regno;
	}
	public String getBlood_group() {
		return blood_group;
	}
	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	public String getImmunization_dates() {
		return immunization_dates;
	}
	public void setImmunization_dates(String immunization_dates) {
		this.immunization_dates = immunization_dates;
	}
	public String getAllergies() {
		return allergies;
	}
	public void setAllergies(String allergies) {
		this.allergies = allergies;
	}
	public String getAbnormalities() {
		return abnormalities;
	}
	public void setAbnormalities(String abnormalities) {
		abnormalities = abnormalities;
	}

	@Override
	public String toString() {
		return "medical [name=" + name + ", blood_group=" + blood_group + ", immunization_dates=" + immunization_dates
				+ ", allergies=" + allergies + ", abnormalities=" + abnormalities + "]";
	}
	
	
	
}
