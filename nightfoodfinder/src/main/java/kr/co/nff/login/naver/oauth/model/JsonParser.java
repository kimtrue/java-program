package kr.co.nff.login.naver.oauth.model;

import java.util.HashMap;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import kr.co.nff.repository.vo.User;


public class JsonParser {
	JSONParser jsonParser = new JSONParser();

	public User changeJson(String string) throws Exception {

		HashMap<String, Object> map = new HashMap<>();
		JSONParser jsonParser = new JSONParser();
		User vo = new User();

		JSONObject jsonObject = (JSONObject) jsonParser.parse(string);

		jsonObject = (JSONObject) jsonObject.get("response");

		map.put("userGender", jsonObject.get("gender"));
		map.put("userId", jsonObject.get("id"));
		map.put("userName", jsonObject.get("name"));
		
		

//		vo.setUserName(map.get("userName").toString());
//		vo.setUserEmail(map.get("userId").toString()); // id -> vo.email 넣기
//		vo.setUserGender(map.get("userGender").toString()); // gender -> vo.gender 넣기
//		vo.setUserNaver(map.get("userId").toString());// id -> vo.naver 넣기

		return vo;
	}
}
