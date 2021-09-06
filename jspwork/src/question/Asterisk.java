package question;

public class Asterisk {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String process(int n) {
		StringBuffer strBuffer = new StringBuffer();
		for(int i=n; i>0; i--) {
			for (int j = 0; j < i; j++) {
				strBuffer.append("*");
			}
			strBuffer.append("<br>");
		}
		return strBuffer.toString();
	}
}
