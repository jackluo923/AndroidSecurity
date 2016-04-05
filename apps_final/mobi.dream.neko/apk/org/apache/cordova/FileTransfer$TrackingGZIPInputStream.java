package org.apache.cordova;

import java.io.IOException;
import java.util.zip.Inflater;

class FileTransfer$TrackingGZIPInputStream
  extends FileTransfer.TrackingInputStream
{
  private FileTransfer.ExposedGZIPInputStream gzin;
  
  public FileTransfer$TrackingGZIPInputStream(FileTransfer.ExposedGZIPInputStream paramExposedGZIPInputStream)
    throws IOException
  {
    super(paramExposedGZIPInputStream);
    gzin = paramExposedGZIPInputStream;
  }
  
  public long getTotalRawBytesRead()
  {
    return gzin.getInflater().getBytesRead();
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileTransfer.TrackingGZIPInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */