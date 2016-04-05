package fi.iki.elonen;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

class SimpleWebServer$2
  extends FileInputStream
{
  SimpleWebServer$2(SimpleWebServer paramSimpleWebServer, File paramFile, long paramLong)
  {
    super(paramFile);
  }
  
  public int available()
    throws IOException
  {
    return (int)val$dataLen;
  }
}

/* Location:
 * Qualified Name:     fi.iki.elonen.SimpleWebServer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */