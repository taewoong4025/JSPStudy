package question;

public class ThreeSixNine {

	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process(int num) {
		String result="";
		int count=0;
		int a,b;
		a = num/10;
		b = num%10;
		
		if(a%3 == 0) {
			count++;
		}
		if(b!=0 && b%3==0) {
			count++;
		}
		return result;
	}
}
