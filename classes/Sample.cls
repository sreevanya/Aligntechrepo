public class Sample {
 public integer totalRecs = 0;     
    public integer index = 0;
    public integer blockSize = 5;         
public sample()
{
//totalrec=[select count() from Opportunity]; 
}
 public List<Opportunity> getMemb() 
{
 List<Opportunity> membs = Database.Query('SELECT Name, Amount FROM Opportunity LIMIT :blockSize OFFSET :index');
    System.debug('Values are ' + membs);
        return membs;
    }    
   public void beginning()
    {
        index = 0;
    }
    
    public void previous()
    {
        index = index - blockSize;
    }
    
    public void next()
    {
        index = index + blockSize;
    }

    public void end()
    {
        index = totalrecs - math.mod(totalRecs,blockSize);
    }        
    
    public boolean getprev()
    {
        if(index == 0)
        return true;
        else
        return false;
    }  
    
    public boolean getnxt()
    {
        if((index + blockSize) < totalRecs)
        return true;
        else
        return false;
    }         
}