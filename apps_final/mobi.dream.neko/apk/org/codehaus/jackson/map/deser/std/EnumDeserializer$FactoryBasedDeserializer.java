package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.lang.reflect.Method;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.ClassUtil;

public class EnumDeserializer$FactoryBasedDeserializer
  extends StdScalarDeserializer<Object>
{
  protected final Class<?> _enumClass;
  protected final Method _factory;
  protected final Class<?> _inputType;
  
  public EnumDeserializer$FactoryBasedDeserializer(Class<?> paramClass1, AnnotatedMethod paramAnnotatedMethod, Class<?> paramClass2)
  {
    super(Enum.class);
    _enumClass = paramClass1;
    _factory = paramAnnotatedMethod.getAnnotated();
    _inputType = paramClass2;
  }
  
  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    if (_inputType == null) {
      paramJsonParser = paramJsonParser.getText();
    }
    for (;;)
    {
      try
      {
        paramJsonParser = _factory.invoke(_enumClass, new Object[] { paramJsonParser });
        return paramJsonParser;
      }
      catch (Exception paramJsonParser)
      {
        ClassUtil.unwrapAndThrowAsIAE(paramJsonParser);
      }
      if (_inputType == Integer.class) {
        paramJsonParser = Integer.valueOf(paramJsonParser.getValueAsInt());
      } else if (_inputType == Long.class) {
        paramJsonParser = Long.valueOf(paramJsonParser.getValueAsLong());
      } else {
        throw paramDeserializationContext.mappingException(_enumClass);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.EnumDeserializer.FactoryBasedDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */