package question;

public class Money {

	private int money;

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public String process(int money) {
		StringBuffer strBuffer = new StringBuffer();
		
		int[] unit = {50000,10000,1000,100,10,1};
		
		for (int i = 0; i < unit.length; i++) {
			int res = money/unit[i];
			
			if(res>0) {
				strBuffer.append(unit[i]+"원 짜리 : "+res+"개<br>");
				money%=unit[i];
			}
		}
		
		return strBuffer.toString();
	}
}
