public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{

	String[] vowels = new String[]{"a","e","i","o","u"};
	for(int i = 0; i < sWord.length(); i++)
	{
    	for(int v = 0; v<vowels.length-1; v++)
    	{
     		if(sWord.substring(i,i+1).equals(vowels[v]))
      		{
        	return i;
      		}
    	}
  	}
  	return -1;
}

public String quicky(String check)
{
	String que = "qu";
	for(int i = 0; i < check.length(); i++)
	{
    	for(int q = 0; q<que.length-1; v++)
    	{
     		if(check.substring(i,i+2).equals(que))
      		{
        	return i;
      		}
    	}
  	}
  	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";//lawTime(sWord);
	}
	if(quicky(sWord) == true)
	{

	}
	else
	{
		return "error";
	}
}