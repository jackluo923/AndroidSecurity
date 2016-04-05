package org.codehaus.jackson.xc;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.deser.std.StdScalarDeserializer;

public class DataHandlerJsonDeserializer
  extends StdScalarDeserializer<DataHandler>
{
  public DataHandlerJsonDeserializer()
  {
    super(DataHandler.class);
  }
  
  public DataHandler deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    new DataHandler(new DataSource()
    {
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
    });
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.xc.DataHandlerJsonDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */