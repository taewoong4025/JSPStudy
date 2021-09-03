package question;

public class Arithmetic {
	private int num1;
	private int num2;
	private String op;
	
	public int getNum1() {
		return num1;
	}

	public void setNum1(int num1) {
		this.num1 = num1;
	}



	public int getNum2() {
		return num2;
	}



	public void setNum2(int num2) {
		this.num2 = num2;
	}



	public String getOp() {
		return op;
	}



	public void setOp(String op) {
		this.op = op;
	}



	public String process(int i, String op , int j) {
		String result="";
		int res=0;
		switch(op) {
		case "+":
			res=i+j;
			break;
		case "-":
			res=i-j;
			break;
		case "*":
			res=i*j;
			break;
		case "/":
			if(j==0) {
				return result="0���� ���� �� �����ϴ�.";
			}
			else {
				res=i/j;
			}
			break;
			default:
			return result="��Ģ������ �ƴմϴ�.";
		}
		result=i+op+j+"�� ��� ����� "+res;
		return result;
	}
	
}
