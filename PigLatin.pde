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

public boolean qChecker(String check)
{
	String quecc = "qu";
    if(check.substring(0,2).equals(quecc))
    {
    	return true;
    }
  	return false;
}

public String conStart(String sWord)
{	
	int vPos;
	String[] vowels = new String[]{"a","e","i","o","u"};
	for(int i = 0; i < sWord.length(); i++)
	{
    	for(int v = 0; v<vowels.length-1; v++)
    	{
     		if(sWord.substring(i,i+1).equals(vowels[v]))
      		{
        		vPos = i;
        		return sWord.substring(i,sWord.length()) + sWord.substring(0,i) + "ay";
      		}
    	}
  	}

	
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)//rule 1 (no vowels)
	{
		return sWord + "ay";
	}
	if(findFirstVowel(sWord) == 0)//rule 2 (starts with vowel)
	{
		return sWord + "way";
	}
	if(qChecker(sWord) == true)//rule 3 (starts with "qu")
	{
		return sWord.substring(2) + "quay";
	}
	else//rule 4 (regular cons/vowel words)
	{
		conStart(sWord);
	}
	return "error";
}