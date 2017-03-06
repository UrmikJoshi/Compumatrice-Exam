import java.io.*;
import java.util.*;
public class WordCount 
{
	public static void main(String[] args) 
	{
		 
	String s="";
	String[] strs;
	String str2;
	int count = 0;
	int size=0;
	ArrayList<String> list=new ArrayList<String>();
	ArrayList<Integer> list1=new ArrayList<Integer>();
	
        Scanner in = new Scanner(System.in);
	
        System.out.println("Please enter a String");
	s=in.nextLine();
	
        char ch[]= new char[s.length()];    
	strs=s.split("[-|\\.|\\?|\\,|\\!]");
        
        for (int i=0; i < strs.length; i++)
        {
            list.add(strs[i]);            
        }

        Iterator itr=list.iterator();  
        while(itr.hasNext())
        { 
                count=1;
        	str2=(String)itr.next();
        	
        	for( int i=0;i<str2.length();i++)
    		{ 
    		    ch[i]= str2.charAt(i);
    		    if(ch[i]==' ')
    		    { 
    		    	count++;  
    		    }
    		    size=count;   
        	}
        	list1.add(size);    
           }
   
        System.out.println("Maximum Word Count in Sentence is="+Collections.max(list1));
        
	}		
		 
}

