package fi.iki.elonen;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NanoHTTPD$DefaultTempFileManager
  implements NanoHTTPD.TempFileManager
{
  private final List<NanoHTTPD.TempFile> tempFiles = new ArrayList();
  private final String tmpdir = System.getProperty("java.io.tmpdir");
  
  public void clear()
  {
    Iterator localIterator = tempFiles.iterator();
    while (localIterator.hasNext())
    {
      NanoHTTPD.TempFile localTempFile = (NanoHTTPD.TempFile)localIterator.next();
      try
      {
        localTempFile.delete();
      }
      catch (Exception localException) {}
    }
    tempFiles.clear();
  }
  
  public NanoHTTPD.TempFile createTempFile()
    throws Exception
  {
    NanoHTTPD.DefaultTempFile localDefaultTempFile = new NanoHTTPD.DefaultTempFile(tmpdir);
    tempFiles.add(localDefaultTempFile);
    return localDefaultTempFile;
  }
}

/* Location:
 * Qualified Name:     fi.iki.elonen.NanoHTTPD.DefaultTempFileManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */