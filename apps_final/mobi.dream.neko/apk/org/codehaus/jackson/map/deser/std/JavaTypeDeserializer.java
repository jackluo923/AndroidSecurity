package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.type.TypeFactory;
import org.codehaus.jackson.type.JavaType;

public class JavaTypeDeserializer
  extends StdScalarDeserializer<JavaType>
{
  public JavaTypeDeserializer()
  {
    super(JavaType.class);
  }
  
  public JavaType deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      paramJsonParser = paramJsonParser.getText().trim();
      if (paramJsonParser.length() == 0) {
        return (JavaType)getEmptyValue();
      }
      return paramDeserializationContext.getTypeFactory().constructFromCanonical(paramJsonParser);
    }
    if (localJsonToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
      return (JavaType)paramJsonParser.getEmbeddedObject();
    }
    throw paramDeserializationContext.mappingException(_valueClass);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.JavaTypeDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */