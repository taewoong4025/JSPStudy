package question;

public class EvenNumber {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public int process(int n) {
		int sum=0;
		
		for(int i = 1; i<=n; i++) {
			if(i%2==0) {
				sum+=i;
			}
		}
		return sum;
	}
}
