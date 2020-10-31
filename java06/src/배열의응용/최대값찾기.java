package 배열의응용;

public class 최대값찾기 {

	public static void main(String[] args) {
		int[] num = { 55, 11, 22, 99, 33 };
		// 해당 인덱스까지의 최대값을 저장해두기로 함.
		int max = num[0]; // 범위안에 있는 배열 최소값 = 첫번째값
		int min = num[0]; // 범위안에 있는 배열 최소값 = 첫번째값

		for (int i = 1; i < num.length; i++) {
			// 이전까지의 최대값은 max에 들어있음.
			// 배열의 인덱스의 값을 하나씩 꺼내서 이전까지의
			// 최대값보다 큰지 비교
			// 해당 인덱스의 값이 지너까지 최대값보다 더 크면
			// 해당 인덱스의 값을 최대값 변수에 저장
			if (num[i] > max) {
				// 11 > 55 false => 55
				// 22 > 55 false => 55
				// 99 > 55 true => 99
				// 33 > 99 false => 99

				max = num[i];
				System.out.println("max값: " + max);
			}
		}

		for (int i = 0; i < num.length; i++) {
			if (num[i] < min) {
				min = num[i];
			}
		}
		System.out.println("min값: " + min);

		int count = 0;
		for (int i = 0; i < num.length; i++) {
			if (num[i] == max) {
				System.out.println(max + "의 위치는: " + i);
				count++;
			}
		}
		System.out.println(max + "의개수: " + count);

	}

}
