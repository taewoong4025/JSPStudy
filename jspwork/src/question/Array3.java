package question;

public class Array3 {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process(int num) {
		StringBuffer strBuffer = new StringBuffer();
		int[] intArray = new int[num];
		for (int i = 0; i < intArray.length; i++) {
			intArray[i]=(int) (Math.random()*num+1);
			strBuffer.append(intArray[i]+" ");
			if(i%10==0) {
				strBuffer.append("<br>");
			}
		}
		return strBuffer.toString();
	}
}
