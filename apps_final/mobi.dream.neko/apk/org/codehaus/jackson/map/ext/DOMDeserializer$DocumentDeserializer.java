package org.codehaus.jackson.map.ext;

import org.codehaus.jackson.map.DeserializationContext;
import org.w3c.dom.Document;

public class DOMDeserializer$DocumentDeserializer
  extends DOMDeserializer<Document>
{
  public DOMDeserializer$DocumentDeserializer()
  {
    super(Document.class);
  }
  
  public Document _deserialize(String paramString, DeserializationContext paramDeserializationContext)
    throws IllegalArgumentException
  {
    return parse(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.ext.DOMDeserializer.DocumentDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */