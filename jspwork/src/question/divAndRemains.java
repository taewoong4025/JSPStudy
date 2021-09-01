package question;

public class divAndRemains {
	
	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	private int num;

	
	public String process(int n) {
		
		if((n/10) == (n%10)) {
			return "10의 자리와 1의 자리가 같습니다.";
		}
		else {
			return "10의 자리와 1의 자리가 같지 않습니다.";
		}
	}
}
