package com.gaganventures;

import java.util.ArrayList;
import java.util.List;

public class common {

	public static StringBuilder splitTo_clob(StringBuilder img64) {

		List<String> strings = new ArrayList<String>();
		int index = 0;
		while (index < img64.length()) {
			strings.add(img64.substring(index, Math.min(index + 3000, img64.length())));
			index += 3000;
		}
		StringBuilder str = new StringBuilder("");
		for (String x : strings) {
			str = str.append("to_clob('" + x + "')|| ");
		}
		str.setLength(str.length() - 3);
		return str;
	}

}
