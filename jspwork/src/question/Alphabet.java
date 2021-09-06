package question;

public class Alphabet {
	private String alphabet;

	public String getAlphabet() {
		return alphabet;
	}

	public void setAlphabet(String alphabet) {
		this.alphabet = alphabet;
	}
	
	public String process(String str) {
		
		char cAlpha = str.charAt(0);
		StringBuffer strBuffer = new StringBuffer();
		
		for(char c='a'; c<=cAlpha; c++) {
			strBuffer.append(c);
		}
		return strBuffer.toString();
	}
}
