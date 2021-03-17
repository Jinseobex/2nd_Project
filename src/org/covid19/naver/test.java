package org.covid19.naver;

import org.json.JSONObject;
import org.covid19.naver.*;

public class test {

	public static void main(String[] args) throws Exception {
		
		JSONObject naverNews = NaverNewsApi.naver_news();
		
		String[][] newsArray = new String[20][4];

		System.out.println();
		for(int k=0; k < naverNews.getJSONArray("items").length(); k++) {
		
			newsArray[k][0] = naverNews.getJSONArray("items").getJSONObject(k).getString("title");
			newsArray[k][1] = naverNews.getJSONArray("items").getJSONObject(k).getString("link");
			newsArray[k][2] = naverNews.getJSONArray("items").getJSONObject(k).getString("description");
			newsArray[k][3] = naverNews.getJSONArray("items").getJSONObject(k).getString("pubDate");
			System.out.println("!!!"+newsArray[k][0]);
		}
		
		
	}
	
}
