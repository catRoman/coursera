public class ExitTest{
	public static void main(String[] args){

	System.out.println("Program is running");
	try{
		switch(Integer.parseInt(args[0])){
			case 0: System.exit(0);
			case 1: System.exit(1);
			case 2: System.exit(2);
			case 3: System.exit(3);
			default: {
				System.out.println("should return zero");
			}
		}
		System.out.println("Good-Bye");
	}catch(ArrayIndexOutOfBoundsException ex){
		System.out.println("Error: 1-3 should return error code if entered into console");
	}
	}
}
