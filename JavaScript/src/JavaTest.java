

public class JavaTest {

	public static void main(String[] args) {
		// 기본형 타입 (8)
//			boolean - 1byte
//			char - 2byte
//			byte - 1byte => 8bit
//			short - 2byte
//			int - 4byte
//			long - 8byte => 64bit
//			float - 4byte
//			double - 8byte
		
		for(int i=10; i>=1;i--){
			for(long j=0;j<10000000000L;j++);
			System.out.println(i);
		}
		
	}

}
