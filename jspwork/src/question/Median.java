package question;

public class Median {
	private int one;
	private int two;
	private int three;
	
	public int getOne() {
		return one;
	}
	public void setOne(int one) {
		this.one = one;
	}
	public int getTwo() {
		return two;
	}
	public void setTwo(int two) {
		this.two = two;
	}
	public int getThree() {
		return three;
	}
	public void setThree(int three) {
		this.three = three;
	}
	
	public int process(int one, int two, int three) {
		int median = one;
		
		if((one>two && one<three) || (one>three && one<two)) {
			median = one;
		}
		else if((two>one && two<three) || (two>three && two<one)) {
			median=two;
		}
		else {
			median=three;
		}
		return median;
	}
}
