/**
 * @author Deepak Rai
 */
package karateDemo.features;

import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

/**
 * @author Deepak Rai
 *
 */
public class WriteData {
	public void writeData(String args) throws FileNotFoundException, UnsupportedEncodingException {
		PrintWriter writer = new PrintWriter("data.txt", "UTF-8");
		writer.println("The first line");
		writer.println("The second line");
		writer.println(args);
		writer.close();
	}
}