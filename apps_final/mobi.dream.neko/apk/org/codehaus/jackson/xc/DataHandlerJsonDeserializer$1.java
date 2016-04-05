package org.codehaus.jackson.xc;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataSource;

class DataHandlerJsonDeserializer$1
  implements DataSource
{
  DataHandlerJsonDeserializer$1(DataHandlerJsonDeserializer paramDataHandlerJsonDeserializer, byte[] paramArrayOfByte) {}
  
  public String getContentType()
  {
    return "application/octet-stream";
  }
  
  public InputStream getInputStream()
    throws IOException
  {
    return new ByteArrayInputStream(val$value);
  }
  
  public String getName()
  {
    return "json-binary-data";
  }
  
  public OutputStream getOutputStream()
    throws IOException
  {
    throw new IOException();
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.xc.DataHandlerJsonDeserializer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */