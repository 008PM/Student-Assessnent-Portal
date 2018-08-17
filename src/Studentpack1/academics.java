package Studentpack1;

public class academics {
	String name;
int regno;
float maths;
float english;
float hindi;
float science;
float social_science;
float computer_science;

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
public float getMaths() {
	return maths;
}
public void setMaths(float maths) {
	this.maths = maths;
}
public float getEnglish() {
	return english;
}
public void setEnglish(float english) {
	this.english = english;
}
public float getHindi() {
	return hindi;
}
public void setHindi(float hindi) {
	this.hindi = hindi;
}
public float getScience() {
	return science;
}
public void setScience(float science) {
	this.science = science;
}
public float getSocial_science() {
	return social_science;
}
public void setSocial_science(float social_science) {
	this.social_science = social_science;
}
public float getComputer_science() {
	return computer_science;
}
public void setComputer_science(float computer_science) {
	this.computer_science = computer_science;
}
@Override
public String toString() {
	return "academics [name=" + name + ", maths=" + maths + ", english=" + english + ", hindi=" + hindi + ", science="
			+ science + ", social_science=" + social_science + ", computer_science=" + computer_science + "]";
}


}
