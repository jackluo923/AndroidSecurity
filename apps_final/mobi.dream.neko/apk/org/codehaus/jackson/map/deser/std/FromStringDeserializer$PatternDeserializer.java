package org.codehaus.jackson.map.deser.std;

import java.util.regex.Pattern;
import org.codehaus.jackson.map.DeserializationContext;

public class FromStringDeserializer$PatternDeserializer
  extends FromStringDeserializer<Pattern>
{
  public FromStringDeserializer$PatternDeserializer()
  {
    super(Pattern.class);
  }
  
  protected Pattern _deserialize(String paramString, DeserializationContext paramDeserializationContext)
    throws IllegalArgumentException
  {
    return Pattern.compile(paramString);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.FromStringDeserializer.PatternDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */