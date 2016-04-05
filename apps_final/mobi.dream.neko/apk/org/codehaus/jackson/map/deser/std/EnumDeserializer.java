package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.lang.reflect.Method;
import org.codehaus.jackson.JsonParser;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.JsonToken;
import org.codehaus.jackson.map.DeserializationConfig;
import org.codehaus.jackson.map.DeserializationConfig.Feature;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonDeserializer;
import org.codehaus.jackson.map.annotate.JsonCachable;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.EnumResolver;

@JsonCachable
public class EnumDeserializer
  extends StdScalarDeserializer<Enum<?>>
{
  protected final EnumResolver<?> _resolver;
  
  public EnumDeserializer(EnumResolver<?> paramEnumResolver)
  {
    super(Enum.class);
    _resolver = paramEnumResolver;
  }
  
  public static JsonDeserializer<?> deserializerForCreator(DeserializationConfig paramDeserializationConfig, Class<?> paramClass, AnnotatedMethod paramAnnotatedMethod)
  {
    Class localClass = paramAnnotatedMethod.getParameterClass(0);
    if (localClass == String.class) {
      localClass = null;
    }
    for (;;)
    {
      if (paramDeserializationConfig.isEnabled(DeserializationConfig.Feature.CAN_OVERRIDE_ACCESS_MODIFIERS)) {
        ClassUtil.checkAndFixAccess(paramAnnotatedMethod.getMember());
      }
      return new FactoryBasedDeserializer(paramClass, paramAnnotatedMethod, localClass);
      if ((localClass == Integer.TYPE) || (localClass == Integer.class))
      {
        localClass = Integer.class;
      }
      else
      {
        if ((localClass != Long.TYPE) && (localClass != Long.class)) {
          break;
        }
        localClass = Long.class;
      }
    }
    throw new IllegalArgumentException("Parameter #0 type for factory method (" + paramAnnotatedMethod + ") not suitable, must be java.lang.String or int/Integer/long/Long");
  }
  
  public Enum<?> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken == JsonToken.VALUE_STRING) || (localJsonToken == JsonToken.FIELD_NAME))
    {
      paramJsonParser = paramJsonParser.getText();
      paramJsonParser = _resolver.findEnum(paramJsonParser);
      if (paramJsonParser == null) {
        throw paramDeserializationContext.weirdStringException(_resolver.getEnumClass(), "value not one of declared Enum instance names");
      }
      return paramJsonParser;
    }
    if (localJsonToken == JsonToken.VALUE_NUMBER_INT)
    {
      if (paramDeserializationContext.isEnabled(DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS)) {
        throw paramDeserializationContext.mappingException("Not allowed to deserialize Enum value out of JSON number (disable DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS to allow)");
      }
      int i = paramJsonParser.getIntValue();
      paramJsonParser = _resolver.getEnum(i);
      if (paramJsonParser == null) {
        throw paramDeserializationContext.weirdNumberException(_resolver.getEnumClass(), "index value outside legal index range [0.." + _resolver.lastValidIndex() + "]");
      }
      return paramJsonParser;
    }
    throw paramDeserializationContext.mappingException(_resolver.getEnumClass());
  }
  
  protected static class FactoryBasedDeserializer
    extends StdScalarDeserializer<Object>
  {
    protected final Class<?> _enumClass;
    protected final Method _factory;
    protected final Class<?> _inputType;
    
    public FactoryBasedDeserializer(Class<?> paramClass1, AnnotatedMethod paramAnnotatedMethod, Class<?> paramClass2)
    {
      super();
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
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.EnumDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */