package question;

public class Season {
	private int month;

	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public String process(int n) {
		String s = "";

		switch(n) {
		case 12:
		case 1:
		case 2:
			s="�ܿ�";
			break;

		case 3:
		case 4:
		case 5:
			s="��";
			break;

		case 6:
		case 7:
		case 8:
			s="����";
			break;

		case 9:
		case 10:
		case 11:
			s="�ܿ�";
			break;		
		}
		return s;

	}
}
