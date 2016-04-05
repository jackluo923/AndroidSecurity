package org.codehaus.jackson.io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

public abstract class OutputDecorator
{
  public abstract OutputStream decorate(IOContext paramIOContext, OutputStream paramOutputStream)
    throws IOException;
  
  public abstract Writer decorate(IOContext paramIOContext, Writer paramWriter)
    throws IOException;
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.io.OutputDecorator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */