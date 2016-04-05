package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public final class StdDeserializer$CharacterDeserializer
  extends StdDeserializer.PrimitiveOrWrapperDeserializer<Character>
{
  public StdDeserializer$CharacterDeserializer(Class<Character> paramClass, Character paramCharacter)
  {
    super(paramClass, paramCharacter);
  }
  
  public Character deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
    {
      int i = paramJsonParser.getIntValue();
      if ((i >= 0) && (i <= 65535)) {
        return Character.valueOf((char)i);
      }
    }
    else if (localJsonToken == JsonToken.VALUE_STRING)
    {
      paramJsonParser = paramJsonParser.getText();
      if (paramJsonParser.length() == 1) {
        return Character.valueOf(paramJsonParser.charAt(0));
      }
      if (paramJsonParser.length() == 0) {
        return (Character)getEmptyValue();
      }
    }
    throw paramDeserializationContext.mappingException(_valueClass, localJsonToken);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.CharacterDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */