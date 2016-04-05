package fi.iki.elonen;

import java.io.File;
import java.io.FilenameFilter;

class SimpleWebServer$3
  implements FilenameFilter
{
  SimpleWebServer$3(SimpleWebServer paramSimpleWebServer) {}
  
  public boolean accept(File paramFile, String paramString)
  {
    return new File(paramFile, paramString).isFile();
  }
}

/* Location:
 * Qualified Name:     fi.iki.elonen.SimpleWebServer.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */