package mobi.monaca.framework.util;

import java.util.ArrayList;
import java.util.Iterator;

public class BenchmarkTimer
{
  protected static ArrayList<Entry> entryList = new ArrayList();
  
  protected static void dump()
  {
    Object localObject = null;
    long l2 = 0L;
    long l1 = 0L;
    Iterator localIterator = entryList.iterator();
    while (localIterator.hasNext())
    {
      Entry localEntry = (Entry)localIterator.next();
      if (localObject != null) {
        l2 = time - time;
      }
      l1 += l2;
      localObject = localEntry;
    }
  }
  
  public static void finish()
  {
    synchronized (entryList)
    {
      mark("finish");
      dump();
      entryList = new ArrayList();
      return;
    }
  }
  
  public static void mark(String paramString)
  {
    synchronized (entryList)
    {
      entryList.add(new Entry(paramString, System.currentTimeMillis()));
      MyLog.d(BenchmarkTimer.class.getSimpleName(), "================> mark: " + paramString + " <==================");
      return;
    }
  }
  
  public static void start()
  {
    synchronized (entryList)
    {
      entryList.clear();
      mark("start");
      return;
    }
  }
  
  protected static class Entry
  {
    final String label;
    final long time;
    
    public Entry(String paramString, long paramLong)
    {
      label = paramString;
      time = paramLong;
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.util.BenchmarkTimer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */