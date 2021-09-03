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
				return result="0으로 나눌 수 없습니다.";
			}
			else {
				res=i/j;
			}
			break;
			default:
			return result="사칙연산이 아닙니다.";
		}
		result=i+op+j+"의 계산 결과는 "+res;
		return result;
	}
	
}
