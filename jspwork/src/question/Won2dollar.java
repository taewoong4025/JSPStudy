package question;

public class Won2dollar {
	
	private double won;

	public double getWon() {
		return won;
	}

	public void setWon(double won) {
		this.won = won;
	}

	public double process(double won) {
		double dollar = won/1200;
		return dollar;
	}
}
