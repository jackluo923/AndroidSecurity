package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;

public class StdDeserializer$StackTraceElementDeserializer
  extends StdScalarDeserializer<StackTraceElement>
{
  public StdDeserializer$StackTraceElementDeserializer()
  {
    super(StackTraceElement.class);
  }
  
  public StackTraceElement deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if (localObject == JsonToken.START_OBJECT)
    {
      String str2 = "";
      localObject = "";
      String str1 = "";
      int i = -1;
      for (;;)
      {
        JsonToken localJsonToken = paramJsonParser.nextValue();
        if (localJsonToken == JsonToken.END_OBJECT) {
          break;
        }
        String str3 = paramJsonParser.getCurrentName();
        if ("className".equals(str3)) {
          str2 = paramJsonParser.getText();
        } else if ("fileName".equals(str3)) {
          str1 = paramJsonParser.getText();
        } else if ("lineNumber".equals(str3))
        {
          if (localJsonToken.isNumeric()) {
            i = paramJsonParser.getIntValue();
          } else {
            throw JsonMappingException.from(paramJsonParser, "Non-numeric token (" + localJsonToken + ") for property 'lineNumber'");
          }
        }
        else if ("methodName".equals(str3)) {
          localObject = paramJsonParser.getText();
        } else if (!"nativeMethod".equals(str3)) {
          handleUnknownProperty(paramJsonParser, paramDeserializationContext, _valueClass, str3);
        }
      }
      return new StackTraceElement(str2, (String)localObject, str1, i);
    }
    throw paramDeserializationContext.mappingException(_valueClass, (JsonToken)localObject);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdDeserializer.StackTraceElementDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */