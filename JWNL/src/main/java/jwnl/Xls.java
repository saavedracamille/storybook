package jwnl;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class Xls {
	
	public Xls() {}
	
	public ArrayList<Morpho> getMorphList() {
		ArrayList<Morpho> morphs = new ArrayList<Morpho>();
		
		try {
			File inputFile = new File("/Users/camillesaavedra/Downloads/morphosemantic-links.xls");
		    POIFSFileSystem fs = new POIFSFileSystem(new FileInputStream(inputFile));
		    HSSFWorkbook wb = new HSSFWorkbook(fs);
		    HSSFSheet sheet = wb.getSheetAt(0);
		    HSSFRow row;
		    HSSFCell cell;

		    int rows; // No of rows
		    rows = sheet.getPhysicalNumberOfRows();

		    int cols = 0; // No of columns
		    int tmp = 0;
		    
		    // This trick ensures that we get the data properly even if it doesn't start from first few rows
		    for(int i = 0; i < 10 || i < rows; i++) {
		        row = sheet.getRow(i);
		        if(row != null) {
		            tmp = sheet.getRow(i).getPhysicalNumberOfCells();
		            if(tmp > cols) cols = tmp;
		        }
		    }
		    
		    for(int r = 0; r < rows; r++) {
		        row = sheet.getRow(r);
		        if(row != null) {
		        	Morpho morpho = new Morpho();
		            for(int c = 0; c < cols; c++) {
		                cell = row.getCell((short)c);
		                if(cell != null) {
		                	String word = cell.toString();
		                	if (word.endsWith("...")) {
		                		word = word.substring(0, word.length() - 3);
		                	}
		                	
		                	switch(c) {
		                		case 0:
			                		morpho.setSensekey1(word);
			                		break;
		                		case 1:
		                			morpho.setOffset1(word);
		                			break;
		                		case 2:
		                			morpho.setRelation(word);
		                			break;
		                		case 3:
		                			morpho.setSensekey2(word);
		                			break;
		                		case 4:
		                			morpho.setOffset2(word);
		                			break;
		                		case 5:
		                			morpho.setGloss1(word);
		                			break;
		                		case 6:
		                			morpho.setGloss2(word);
		                			break;
		                	}
		                }
		            }
		            morphs.add(morpho);
		        }
		    }
		} catch(Exception ioe) {
		    ioe.printStackTrace();
		}
		
		return morphs;
	}
}
