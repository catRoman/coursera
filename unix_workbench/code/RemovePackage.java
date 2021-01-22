import java.io.IOException;
import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;
import java.util.ArrayList;

public class RemovePackage{
    public static void main(String[] args){
        if(args.length != 1){
            System.out.println("Usage: java Exercise12_20 [srcRootFile]");
            System.exit(1);
        }
        try{
            removePackage(createDirectory(args[0]));
            System.out.println("The package was removed succesfully.");
        }catch(IOException ex){
            System.out.println(ex);
        }finally{
            System.out.println("Good-Bye");
        }
    }
    /**
     * checks validity of String input 
     * for file location, 
     * creates file
     * checks if directory and returns Directory 
     * file of terminates
     * @param input String for file location
     * @return file
     */
public static File createDirectory(String input){
    
   File srcRootDirectory = new File(input);

   if(!srcRootDirectory.exists()){
       System.out.println("Error: " + srcRootDirectory + " does not exist");
   }else if(!srcRootDirectory.isDirectory()){
       System.out.println("Error: " + srcRootDirectory + " is not a directory.");
   }
   return srcRootDirectory;
}
public static void removePackage(File srcRootDirectory)
    throws IOException{

    ArrayList<File> workingFileList = new ArrayList<>();
    File[] fileList = srcRootDirectory.listFiles();
       
    for(File e : fileList){
        if(e.isDirectory())
            removePackage(e);
        else
            if(checkFileValidity(e))
                workingFileList.add(e);            
    }
    ArrayList<ArrayList<String>> fileContentList = new ArrayList<>();
    
    //creates double arrayList, write all files to 
    // an independant arraylist of strings

    for(int i = 0; i < workingFileList.size(); i++){
        fileContentList.add(new ArrayList<String>());
        try(Scanner fileReader = new Scanner(workingFileList.get(i))){
            while(fileReader.hasNext()){
                fileContentList.get(i).add(fileReader.nextLine());
            }
        }
    }
    //removes any line beging with package;
    for(int i = 0; i < fileContentList.size(); i++){
        for(int j = 0; j < fileContentList.get(i).size(); j++){
       
            if(fileContentList.get(i).get(j).length() >= 7){

            if(fileContentList.get(i).get(j).substring(0,7).contains("package")){
                fileContentList.get(i).remove(j);
            System.out.println("Package removed: " + workingFileList.get(i).getPath());
            }
            }
        }
    }

    //prints new lines to file
    for(int i =0; i < workingFileList.size(); i++){
        try(PrintWriter removePrint = new PrintWriter(workingFileList.get(i))){
            
                for(String f : fileContentList.get(i)){
                    removePrint.println(f);
                    }
                
            }
        }
    }

public static boolean checkFileValidity(File file){
    if(!file.canRead())
        return false;
    else if(!file.canWrite())
        return false;
    
    return true;
}
}