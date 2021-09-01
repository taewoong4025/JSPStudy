package question;

public class Three {
	
	private int number;

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}
	
	public String process(int n) {
		String s;
		if(n%3==0) {
			s = "3의 배수입니다.";
		}else {
			s = "3의 배수가 아닙니다.";
		}
		return s;
	}
}
