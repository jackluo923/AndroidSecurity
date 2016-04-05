package fi.iki.elonen;

class NanoHTTPD$DefaultTempFileManagerFactory
  implements NanoHTTPD.TempFileManagerFactory
{
  private NanoHTTPD$DefaultTempFileManagerFactory(NanoHTTPD paramNanoHTTPD) {}
  
  public NanoHTTPD.TempFileManager create()
  {
    return new NanoHTTPD.DefaultTempFileManager();
  }
}

/* Location:
 * Qualified Name:     fi.iki.elonen.NanoHTTPD.DefaultTempFileManagerFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */