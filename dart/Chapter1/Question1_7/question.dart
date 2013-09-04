/*
 * Write an algorithm such that if an element in an MxN matrix is 0,
 * its entire row and column are set to 0.
 *output: 
 *1004
 *0000
 *0000
 *1004
 */
import java.util.Arrays;


public class QuestionSolu {
	
	public static void main (String[] args)
	{
		 int[][] matrix = { {1, 2, 3, 4},
						 	{1, 0, 3, 4},
						 	{1, 2, 0, 4}, 
						 	{1, 2, 3, 4}
						 		};
		 	 
		 setZeros(matrix);
		 int num = 0;
		 for(int i = 0; i < matrix.length; i++)
			{
				for(int j = 0; j < matrix[0].length; j++)
				{	
					System.out.print(matrix[i][j]);
					num++;
					if(num == matrix[0].length)
					{
						System.out.println();
						num = 0;
					}
				}
			}
	}

	public static void setZeros(int[][] matrix) 
	{
		int[] row = new int[matrix.length];
		int[] column = new int[matrix[0].length];
		//Store index that row or column contain 0s
		for(int i = 0; i < matrix.length; i++)
		{
			for(int j = 0; j < matrix[0].length; j++)
			{
				if(matrix[i][j] == 0)
					{
						row[i] = 1;
						column[j] = 1;
					}
			}
			
		}
		//set to zero
		for(int i = 0; i < matrix.length; i++)
		{
			for(int j = 0; j < matrix[0].length; j++)
			{
				if(row[i] == 1 || column[j] == 1)
					{ 
						matrix[i][j] = 0;
						
					}
			}
			
		}
		
	}
	
} 

	
