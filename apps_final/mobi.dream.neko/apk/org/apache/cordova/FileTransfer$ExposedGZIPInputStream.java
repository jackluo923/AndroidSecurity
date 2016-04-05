package org.apache.cordova;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;

class FileTransfer$ExposedGZIPInputStream
  extends GZIPInputStream
{
  public FileTransfer$ExposedGZIPInputStream(InputStream paramInputStream)
    throws IOException
  {
    super(paramInputStream);
  }
  
  public Inflater getInflater()
  {
    return inf;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileTransfer.ExposedGZIPInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */