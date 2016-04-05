package fi.iki.elonen;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class NanoHTTPD$DefaultTempFile
  implements NanoHTTPD.TempFile
{
  private File file;
  private OutputStream fstream;
  
  public NanoHTTPD$DefaultTempFile(String paramString)
    throws IOException
  {
    file = File.createTempFile("NanoHTTPD-", "", new File(paramString));
    fstream = new FileOutputStream(file);
  }
  
  public void delete()
    throws Exception
  {
    if (fstream != null) {
      fstream.close();
    }
    file.delete();
  }
  
  public String getName()
  {
    return file.getAbsolutePath();
  }
  
  public OutputStream open()
    throws Exception
  {
    return fstream;
  }
}

/* Location:
 * Qualified Name:     fi.iki.elonen.NanoHTTPD.DefaultTempFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */