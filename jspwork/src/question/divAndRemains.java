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
			return "10�� �ڸ��� 1�� �ڸ��� �����ϴ�.";
		}
		else {
			return "10�� �ڸ��� 1�� �ڸ��� ���� �ʽ��ϴ�.";
		}
	}
}
