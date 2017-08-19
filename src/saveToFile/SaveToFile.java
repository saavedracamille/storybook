package saveToFile;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public class SaveToFile {
	private String introduction;
	private String body;
	private String conclusion;
	
	public SaveToFile(String introduction, String body, String conclusion) {
		this.introduction = introduction;
		this.body = body;
		this.conclusion = conclusion;
	}
	
	public void save() {
		BufferedWriter bw = null;
		FileWriter fw = null;
		
		try {
			fw = new FileWriter("C:\\Users\\Robee Khyra Te\\Desktop\\FBStories.txt");
			bw = new BufferedWriter(fw);
			bw.write(introduction);
			bw.write(body);
			bw.write(conclusion);
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				if (bw != null)
					bw.close();
				
				if (fw != null)
					fw.close();
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
	}
}
