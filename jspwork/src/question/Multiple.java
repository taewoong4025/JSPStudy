package question;

public class Multiple {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process(int n) {
		boolean multiple = false;
		StringBuffer strBuffer = new StringBuffer();
		if(n%3==0) {
			strBuffer.append("3의 배수 이다.<br>");
			multiple=true;
		}
		if(n%5==0) {
			strBuffer.append("5의 배수 이다.<br>");
			multiple=true;
		}
		if(n%8==0) {
			strBuffer.append("8의 배수 이다.<br>");
			multiple=true;
		}
		
		if(!multiple) {
			strBuffer.append(" 어느 배수도 아니다.<br>");
		}
			return strBuffer.toString();
	}
}
