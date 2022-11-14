package com.gurugan.infra;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping(value = "")
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "infra/index"; 

	}
	
	@RequestMapping(value = "/dashBoard", method = RequestMethod.GET)
	public String dashBoard(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "infra/xdmin/DashBoard";

	}
	
	@RequestMapping(value = "/test/publicWeather1")
	public String publicWeather1List(Model model) throws Exception {
		
		System.out.println("api start");
		
		String apiUrl = "http://apis.data.go.kr/1360000/TourStnInfoService/getTourStnVilageFcst?serviceKey=VgXMqbUAse18oLOkphVfaa%2FrKdBLBxogiZMn583FeGu2JQRVPrh7kBHFWNQqQ2daP1ZLEtY0eKukLtOzEj0MCw%3D%3D&numOfRows=10&pageNo=1&dataType=json&CURRENT_DATE=2022080101&HOUR=24&COURSE_ID=409";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
		
//		json object + array string -> java map
		
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
        
        System.out.println("######## Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> response = new HashMap<String, Object>();
		response = (Map<String, Object>) map.get("response");
		
		System.out.println("######## response");
		for (String key : response.keySet()) {
			String value = String.valueOf(response.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) response.get("header");
		
		System.out.println("######## header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
//		String aaa = (String) header.get("resultCode");
		
//		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
//		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) response.get("body");
		
		System.out.println("######## body");
		for (String key : body.keySet()) {
			String value = String.valueOf(body.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		Map<String, Object> items = new HashMap<String, Object>();
		items = (Map<String, Object>) body.get("items");
		
		System.out.println("######## items");
		for (String key : items.keySet()) {
			String value = String.valueOf(items.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		
		List<Home> item = new ArrayList<Home>();
		item = (List<Home>) items.get("item");
		
		
		System.out.println("item.size(): " + item.size());
		
//		for(Home item : items) {
//			System.out.println(item.getMM());
//		}
		
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		
		return "infra/test/publicWeather1";
	}
	
}
