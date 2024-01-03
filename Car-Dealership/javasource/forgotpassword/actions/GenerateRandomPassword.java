// This file was generated by Mendix Studio Pro.
//
// WARNING: Only the following code will be retained when actions are regenerated:
// - the import list
// - the code between BEGIN USER CODE and END USER CODE
// - the code between BEGIN EXTRA CODE and END EXTRA CODE
// Other code you write will be lost the next time you deploy the project.
// Special characters, e.g., é, ö, à, etc. are supported in comments.

package forgotpassword.actions;

import java.security.SecureRandom;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;
import com.mendix.systemwideinterfaces.core.IContext;
import com.mendix.webui.CustomJavaAction;

/**
 * Generate a random string between 15-20 characters that meets most security standards for randomness,
 */
public class GenerateRandomPassword extends CustomJavaAction<java.lang.String>
{
	public GenerateRandomPassword(IContext context)
	{
		super(context);
	}

	@java.lang.Override
	public java.lang.String executeAction() throws Exception
	{
		// BEGIN USER CODE
		return generateCommonLangPassword(20,30,6,6,6);
		// END USER CODE
	}

	/**
	 * Returns a string representation of this action
	 * @return a string representation of this action
	 */
	@java.lang.Override
	public java.lang.String toString()
	{
		return "GenerateRandomPassword";
	}

	// BEGIN EXTRA CODE
	

	//The code below is an exact copy of the password generation of the Community Commons library (commit of Jan-7 2022)
	//No module link to reduce unnecessary module dependencies.
	
	private static final Random RANDOM = new SecureRandom();
	private static final String UPPERCASE_ALPHA = stringRange('A', 'Z');
	private static final String LOWERCASE_ALPHA = stringRange('a', 'z');
	private static final String DIGITS = stringRange('0', '9');
	private static final String SPECIAL = stringRange('!', '/');
	private static final String ALPHANUMERIC = UPPERCASE_ALPHA + LOWERCASE_ALPHA + DIGITS;


	// See https://www.baeldung.com/java-generate-secure-password
	// Implementation inspired by https://github.com/eugenp/tutorials/tree/master/core-java-modules/core-java-string-apis (under MIT license)
	private static String generateCommonLangPassword(int minLen, int maxLen, int noOfCapsAlpha, int noOfDigits, int noOfSplChars) {
		String upperCaseLetters = randomStringFromCharArray(noOfCapsAlpha, UPPERCASE_ALPHA.toCharArray());
		String numbers = randomStringFromCharArray(noOfDigits, DIGITS.toCharArray());
		String specialChar = randomStringFromCharArray(noOfSplChars, SPECIAL.toCharArray());

		final int fixedNumber = noOfCapsAlpha + noOfDigits + noOfSplChars;
		final int lowerBound = minLen - fixedNumber;
		final int upperBound = maxLen - fixedNumber;
		String totalChars = randomStringFromCharArray(lowerBound, upperBound, ALPHANUMERIC.toCharArray());

		String combinedChars = upperCaseLetters
			.concat(numbers)
			.concat(specialChar)
			.concat(totalChars);
		List<Character> pwdChars = combinedChars.chars()
			.mapToObj(c -> (char) c)
			.collect(Collectors.toList());
		Collections.shuffle(pwdChars);
		String password = pwdChars.stream()
			.collect(StringBuilder::new, StringBuilder::append, StringBuilder::append)
			.toString();
		return password;
	}

	/**
	 * Generate a secure random string using the given array of characters, of which the resulting
	 * string will be composed of.
	 *
	 * @param count        The length of the random string.
	 * @param allowedChars The characters used for constructing the random string.
	 * @return A random string.
	 * @throws IllegalArgumentException if <code>count</code> is negative or <code>allowedChars</code> is null or empty.
	 */
	private static String randomStringFromCharArray(int count, final char[] allowedChars) {
		if (count == 0)
			return "";
		if (count < 0)
			throw new IllegalArgumentException("The requested length for the random string was negative: " + count);
		if (allowedChars == null)
			throw new IllegalArgumentException("The char array 'allowedChars' cannot be null.");
		if (allowedChars.length == 0)
			throw new IllegalArgumentException("The char array 'allowedChars' cannot be empty.");

		StringBuilder builder = new StringBuilder();

		while (count-- > 0) {
			int index = RANDOM.nextInt(allowedChars.length);
			builder.append(allowedChars[index]);
		}

		return builder.toString();
	}

	/**
	 * Generate a random string with a random length between <code>minLengthBound</code> and <code>maxLengthBound</code> (inclusive),
	 * using the given set of allowed characters.
	 *
	 * @param minLengthBound The lower bound for the random length of the string.
	 * @param maxLengthBound The upper bound for the random length of the string.
	 * @param allowedChars   An array of characters of which the resulting string will be made up of.
	 * @return A random string with a length between <code>minLengthBound</code> and <code>maxLengthBound</code>.
	 * @throws IllegalArgumentException if <code>minLengthBound</code> is larger than <code>maxLengthBound</code>.
	 */
	private static String randomStringFromCharArray(int minLengthBound, int maxLengthBound, final char[] allowedChars) {
		if (minLengthBound == maxLengthBound)
			return randomStringFromCharArray(minLengthBound, allowedChars);
		if (minLengthBound > maxLengthBound)
			throw new IllegalArgumentException("The minimum bound (" + minLengthBound + ") was larger than the maximum bound (" + maxLengthBound + ".");
		final int randomLength = minLengthBound + RANDOM.nextInt(maxLengthBound - minLengthBound + 1); // add one to make the range inclusive.
		return randomStringFromCharArray(randomLength, allowedChars);
	}

	/**
	 * Produces a 'range' string starting from the <code>begin</code> character up to
	 * the <code>end</code> character (inclusive range). For example, for the range (a-z),
	 * this method will generate the lowercase alphabet.
	 *
	 * @param begin The starting point of the string.
	 * @param end   The ending point of the string.
	 * @return A string from <code>begin</code> to <code>end</code> (inclusive range).
	 * @throws IllegalArgumentException if the <code>begin</code> character has a higher code point than the <code>end</code> character.
	 */
	private static String stringRange(char begin, char end) {
		if (begin > end) {
			throw new IllegalArgumentException("The 'begin' character cannot be larger than the 'end' character.");
		}

		StringBuilder builder = new StringBuilder();
		while (begin <= end)
			builder.append(begin++);
		return builder.toString();
	}
	
	// END EXTRA CODE
}