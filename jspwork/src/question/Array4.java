package question;

//import java.util.Arrays;

public class Array4 {
	private int num;

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	public static boolean exists(int a[], int from, int r) { //�ߺ� Ȯ�� �޼ҵ�
		
		for (int i = 0; i < from; i++) {
			if(a[i]==r) {
				return true;
			}
		}
		return false;
	}
	
	public String process(int num) {
		StringBuffer strBuffer = new StringBuffer();
		int[] intArray = new int[num];
		for (int i = 0; i < intArray.length; i++) {
			
//			intArray[i]=(int) (Math.random()*num+1);
			int r =(int) (Math.random()*num+1);
			
			if(exists(intArray, i, r)) { //�ߺ��� �����ϸ� �ߺ��� �ȵ� ������ ����.
				i--;
				continue;
			}
			else { // �ƴϸ� ������ �迭�� �ִ´�.
				intArray[i]=r;
			}
		}
			
//			for (int j = 0; j < i; j++) { //���� �ߺ� ����
//				if(intArray[i]==intArray[j]) {
//					i--;
//					break;
//				}
//			}
		
//		Arrays.sort(intArray); // ����
		
		for (int i = 0; i < intArray.length; i++) {
			if(i==0) {
				strBuffer.append(intArray[i]+" ");
			}
			else {
				if(i%10==0) {
					strBuffer.append("<br>");
				}
				strBuffer.append(intArray[i]+" ");
			}
		}
		return strBuffer.toString();
	}
}
