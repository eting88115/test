package test22;

public class FolderConfig {
	public FolderConfig(){		
	}
	
	public String FilePath(){
	   //li's 
		String DBPath="C:\\Users\\elene\\Desktop\\leelab\\WebContent\\assets\\images\\member\\";
	   //Liao's 
		 //String DBPath="C:\\Users\\Ting\\Desktop\\test\\WebContent\\assets\\images\\member\\";
		//chieh's
		//String DBPath="C:\\Users\\USER\\git\\test\\WebContent\\assets\\images\\member\\";
	   return DBPath;		
	}
	public String WebsiteRelativeFilePath(){
		   
		   //Liao's 
			 //String Path="C:\\Users\\Ting\\Desktop\\test\\WebContent\\assets\\images\\member\\";
		   //li's 
			 String Path="assets/images/member/";
		   //chieh's
			 //String Path="C:\\Users\\USER\\git\\test\\WebContent\\assets\\images\\member\\";
			 return Path;		
	}
}