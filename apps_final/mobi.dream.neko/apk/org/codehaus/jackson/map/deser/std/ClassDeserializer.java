package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.annotate.JacksonStdImpl;

@JacksonStdImpl
public class ClassDeserializer
  extends StdScalarDeserializer<Class<?>>
{
  public ClassDeserializer()
  {
    super(Class.class);
  }
  
  public Class<?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if (localObject == JsonToken.VALUE_STRING)
    {
      localObject = paramJsonParser.getText();
      if (((String)localObject).indexOf('.') < 0)
      {
        if ("int".equals(localObject)) {
          return Integer.TYPE;
        }
        if ("long".equals(localObject)) {
          return Long.TYPE;
        }
        if ("float".equals(localObject)) {
          return Float.TYPE;
        }
        if ("double".equals(localObject)) {
          return Double.TYPE;
        }
        if ("boolean".equals(localObject)) {
          return Boolean.TYPE;
        }
        if ("byte".equals(localObject)) {
          return Byte.TYPE;
        }
        if ("char".equals(localObject)) {
          return Character.TYPE;
        }
        if ("short".equals(localObject)) {
          return Short.TYPE;
        }
        if ("void".equals(localObject)) {
          return Void.TYPE;
        }
      }
      try
      {
        paramJsonParser = Class.forName(paramJsonParser.getText());
        return paramJsonParser;
      }
      catch (ClassNotFoundException paramJsonParser)
      {
        throw paramDeserializationContext.instantiationException(_valueClass, paramJsonParser);
      }
    }
    throw paramDeserializationContext.mappingException(_valueClass, (JsonToken)localObject);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.ClassDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */