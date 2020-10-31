package 크롤링;

import java.io.IOException;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class 국내크롤링 {

	public String[] crawl(String[] code) {

		// 1번
		Connection con = Jsoup.connect(
				"http://ncov.mohw.go.kr/bdBoardList_Real.do?brdId=1&brdGubun=11&ncvContSeq=&contSeq=&board_id=&gubun=");

		String[] result = null;
		// 2번
		try {
			// 1
			Document doc = con.get();

			Elements list = doc.select("tbody");
			Elements list2 = list.select("td");
			String a1 = list2.get(32).text(); // 현재가
			String a2 = list2.get(33).text(); // 현재가
			String a3 = list2.get(34).text(); // 현재가
			String a4 = list2.get(35).text(); // 현재가
			String a5 = list2.get(36).text(); // 현재가

			result = new String[] { a1, a2, a3, a4, a5 };
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}

}
