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
			s = "3�� ����Դϴ�.";
		}else {
			s = "3�� ����� �ƴմϴ�.";
		}
		return s;
	}
}
