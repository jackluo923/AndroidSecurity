package org.codehaus.jackson.map.deser.std;

import java.net.URI;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$URIDeserializer
  extends FromStringDeserializer<URI>
{
  public FromStringDeserializer$URIDeserializer()
  {
    super(URI.class);
  }
  
  protected URI _deserialize(String paramString, DeserializationContext paramDeserializationContext)
    throws IllegalArgumentException
  {
    return URI.create(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.URIDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */