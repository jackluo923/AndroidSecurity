package fi.iki.elonen;

public abstract interface NanoHTTPD$TempFileManager
{
  public abstract void clear();
  
  public abstract NanoHTTPD.TempFile createTempFile()
    throws Exception;
}

/* Location:
 * Qualified Name:     fi.iki.elonen.NanoHTTPD.TempFileManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */