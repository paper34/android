package 데이터;

public class 문자열 {
//코드 자동 정리: ctrl + shift + f
	
	public static void main(String[] args) {
		// 기본 데이터는 아닌데, 사람이 워낙 많이 쓰는 데이터의 형태이므로
		// 기본데이터처럼 쓰게 해놓는 문자열을 나타내는 키워드:string
		String name = "홍길동";
		// String은 name이라는 변수에 들어갈 데이터의 유형
		// data type(자료형)
		String company = "메가더조은";
		System.out.println(name + "은" + company + "소속이다.");
		// + : 하나라도 string이면 모두다 string 결합의 의미!
		int age = 100;
		System.out.println(name + "의 나이는" + age);
		String subject; // 선언! => 메모리가 할당
		subject = "자바"; // 값을 넣음, string 두번 선언하면 안된다. / 대입연산자, 할당연산자(=)
		System.out.println("내 과목은" + subject);

		String day;
		//System.out.println(day);
		// 쓰레기값 상태인 경우, 연산도 안되고, 출력도 안됨.
		day = "월요일"; // String day 변수에 월요일이라는 값을 넣음
		System.out.println(day);
	}

}
