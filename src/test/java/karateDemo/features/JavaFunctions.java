/**
 * @author Deepak Rai
 */
package karateDemo.features;

/**
 * @author Deepak Rai
 *
 */
public class JavaFunctions {
	public void nonstaticFunctions() {
		System.out.println("This is a non static function");
	}

	public static void staticFunctions() {
		System.out.println("This is a static function");
	}
	
	public String argumentCheck(String args) {
		return "Hello " + args;
	}
}
