package question;

public class Rectangle {
	private int x;
	private int y;
	
	public int getX() {
		return x;
	}
	public void setX(int x) {
		this.x = x;
	}
	public int getY() {
		return y;
	}
	public void setY(int y) {
		this.y = y;
	}
	
	public String process(int x, int y) {
		String result="";
		if((x>=100 && x<=200) && (y>=100 && y<=200)) {
			result="�簢�� �ȿ� �ֽ��ϴ�.";
		}else {
			result="�簢�� �ȿ� �����ϴ�.";
		}
		return result;
	}
}
