package org.apache.cordova;

import java.io.IOException;
import java.io.InputStream;

class FileTransfer$SimpleTrackingInputStream
  extends FileTransfer.TrackingInputStream
{
  private long bytesRead = 0L;
  
  public FileTransfer$SimpleTrackingInputStream(InputStream paramInputStream)
  {
    super(paramInputStream);
  }
  
  private int updateBytesRead(int paramInt)
  {
    if (paramInt != -1) {
      bytesRead += paramInt;
    }
    return paramInt;
  }
  
  public long getTotalRawBytesRead()
  {
    return bytesRead;
  }
  
  public int read()
    throws IOException
  {
    return updateBytesRead(super.read());
  }
  
  public int read(byte[] paramArrayOfByte)
    throws IOException
  {
    return updateBytesRead(super.read(paramArrayOfByte));
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    return updateBytesRead(super.read(paramArrayOfByte, paramInt1, paramInt2));
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.FileTransfer.SimpleTrackingInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */