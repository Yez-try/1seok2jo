package com.seok.home.util;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.List;

public class CreateCsv {
	public void makeList(String path, List<Object> list) throws Exception{
		File file = new File(path);
		BufferedWriter bw = new BufferedWriter(new FileWriter(file));
		
		bw.write("번호,이름,지역");
		
		bw.flush();
		bw.close();
	}

}
