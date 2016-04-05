package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.net.URL;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$URLDeserializer
  extends FromStringDeserializer<URL>
{
  public FromStringDeserializer$URLDeserializer()
  {
    super(URL.class);
  }
  
  protected URL _deserialize(String paramString, DeserializationContext paramDeserializationContext)
    throws IOException
  {
    return new URL(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.URLDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */