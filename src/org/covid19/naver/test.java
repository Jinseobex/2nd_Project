package org.covid19.naver;

import org.json.JSONObject;
import org.covid19.naver.*;

public class test {

	public static void main(String[] args) throws Exception {
		
		JSONObject naverNews = NaverNewsApi.naver_news();
		
		String[][] newsArray2 = new String[10][4];

		
		for(int z=5; z < 10; z++) {
			
			newsArray2[z][0] = naverNews.getJSONArray("items").getJSONObject(z).getString("title");
			newsArray2[z][1] = naverNews.getJSONArray("items").getJSONObject(z).getString("link");
			newsArray2[z][2] = naverNews.getJSONArray("items").getJSONObject(z).getString("description");
			newsArray2[z][3] = naverNews.getJSONArray("items").getJSONObject(z).getString("pubDate");
			System.out.println(newsArray2[z][0]);
		}
		
	}
	
}
