package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.nio.charset.Charset;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$CharsetDeserializer
  extends FromStringDeserializer<Charset>
{
  public FromStringDeserializer$CharsetDeserializer()
  {
    super(Charset.class);
  }
  
  protected Charset _deserialize(String paramString, DeserializationContext paramDeserializationContext)
    throws IOException
  {
    return Charset.forName(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.CharsetDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */