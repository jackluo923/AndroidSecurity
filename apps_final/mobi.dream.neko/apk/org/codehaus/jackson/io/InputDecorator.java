package org.codehaus.jackson.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

public abstract class InputDecorator
{
  public abstract InputStream decorate(IOContext paramIOContext, InputStream paramInputStream)
    throws IOException;
  
  public abstract InputStream decorate(IOContext paramIOContext, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException;
  
  public abstract Reader decorate(IOContext paramIOContext, Reader paramReader)
    throws IOException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.io.InputDecorator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */