package fi.iki.elonen;

import java.io.OutputStream;

public abstract interface NanoHTTPD$TempFile
{
  public abstract void delete()
    throws Exception;
  
  public abstract String getName();
  
  public abstract OutputStream open()
    throws Exception;
}

/* Location:
 * Qualified Name:     fi.iki.elonen.NanoHTTPD.TempFile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */