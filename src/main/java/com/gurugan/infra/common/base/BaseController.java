package com.gurugan.infra.common.base;

import java.io.UnsupportedEncodingException;
import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;

public class BaseController {
	
	public String base64Decoder (String str) {
		String decodedString = null;
		Decoder decoder = Base64.getDecoder();
		byte[] decodedBytes = decoder.decode(str);
		try {
			decodedString = new String(decodedBytes, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return decodedString;
	}
	
	public String base64Encoder (String str) {
		String encodedString = null;
		byte[] targetBytes = str.getBytes(); 
		Encoder encoder = Base64.getEncoder(); 
		byte[] encodedBytes = encoder.encode(targetBytes);
		try {
			encodedString = new String(encodedBytes, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return encodedString;
	}

}
