package question;

public class TwoArray {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public String process(int num){
		
		StringBuffer strBuffer = new StringBuffer();
		
		int[][] arr = new int[num][num];
		
		
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				 
				
				arr[i][j]=(int) (Math.random()*100+1);
				
			}
		}
		
		for (int i = 0; i < arr.length; i++) {
			for (int j = 0; j < arr[i].length; j++) {
				strBuffer.append(arr[i][j]+" ");
			}
			strBuffer.append("<br>");
		}
	return strBuffer.toString();
	}
}
