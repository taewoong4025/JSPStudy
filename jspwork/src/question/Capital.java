package question;

public class Capital {
	private String capital;

	public String getCapital() {
		return capital;
	}

	public void setCapital(String capital) {
		this.capital = capital;
	}
	
	public String process(String str) {
		
		StringBuffer strBuffer = new StringBuffer();
		
		char c2 = str.charAt(0);
		
		for(char c = c2; c>='A'; c--) {
			for (char k = 'A'; k<=c; k++) {
				strBuffer.append(k);
			}
			strBuffer.append("<br>");
		}
		return strBuffer.toString();
	}
}
