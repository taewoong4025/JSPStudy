package question;

import java.util.Arrays;

public class Triangle {
	private int num1;
	private int num2;
	private int num3;
	
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
	public int getNum3() {
		return num3;
	}
	public void setNum3(int num3) {
		this.num3 = num3;
	}
	
	public String process (int num1, int num2, int num3) {
		String res ="";
		int max=0;
		int[] arr = {num1,num2,num3};
		
		Arrays.sort(arr);
		max=arr[2];
		
		if(max<arr[0]+arr[1]) {
			res="삼각형이 됩니다.";
		}
		else {
			res="삼각형이 안됩니다.";
					}
		return res;
	}
}
