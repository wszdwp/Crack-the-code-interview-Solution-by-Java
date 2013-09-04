/*
 * Write a method to replace all spaces in a stirng with '%20'.
 * You may assume that the string has sufficient space at the end
 * of the string to hold the addtional characters, and that you
 * are given the "true" length of the string. (Note: if
 * implementing in java, please use a character array so that you can
 * perform this operation in place.)
 *
 * EXAMPLE
 * Input1: 'T', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 't', 'e', 's', 't', ' ', '!'
 * Input2: "This is a test case2!"
 * Output: 
 *This%20is%20a%20test%20!
 *This%20is%20a%20test%20case2!
 *This20%is20%a20%test20%case2!"Mr%20John%20Smith"
 */

public class QuestionSolu {
	
	public static void main (String[] args)
	{
		 char[] str = {'T', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 't', 'e', 's', 't', ' ', '!'};
		 String str2 = "This is a test case2!";
		 	 
		 System.out.println(replaceSpace(str));
		 System.out.println(replaceSpace(str2.toCharArray()));
		 System.out.println(str2.replaceAll(" ", "20%"));
	}

	public static char[] replaceSpace(char[] str)
	{
		int numOfSpace = 0;
		for(int i = 0; i < str.length; i++)
		{
			if(str[i] == ' ')
			{
				numOfSpace++;
			}
		}
		int newStrLength = numOfSpace * 2 + str.length;
		char[] replacedStr = new char[newStrLength];
		//replacedStr[newStrLength] = '\0'; this line will cause IndexOutOfbound
		newStrLength--;
		for(int i = str.length - 1; i >= 0; i--)
		{
			if(str[i] == ' ')
			{
				replacedStr[newStrLength] = '0';
				replacedStr[newStrLength - 1] = '2';
				replacedStr[newStrLength - 2] = '%';
				newStrLength = newStrLength - 3;
				
			}
			else
			{
				replacedStr[newStrLength] = str[i];
				newStrLength = newStrLength - 1;
			}
		}
		
		return replacedStr;
		
	}
	
} 
