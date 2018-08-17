package Studentpack1;

public class overall 
{
	String name;
	String username;
	String blood_group;
	int regno;
	int maths;
	public int getMaths() {
		return maths;
	}
	public void setMaths(int maths) {
		this.maths = maths;
	}
	
	@Override
	public String toString() {
		return "overall [name=" + name + ", username=" + username + ", blood_group=" + blood_group + ", regno=" + regno
				+ ", maths=" + maths + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getBlood_group() {
		return blood_group;
	}
	public void setBlood_group(String blood_group) {
		this.blood_group = blood_group;
	}
	public int getRegno() {
		return regno;
	}
	public void setRegno(int regno) {
		this.regno = regno;
	}
	

}