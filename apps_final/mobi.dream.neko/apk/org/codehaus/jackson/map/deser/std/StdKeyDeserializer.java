package org.codehaus.jackson.map.deser.std;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Date;
import java.util.UUID;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.io.NumberInput;
import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.KeyDeserializer;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.EnumResolver;

public abstract class StdKeyDeserializer
  extends KeyDeserializer
{
  protected final Class<?> _keyClass;
  
  protected StdKeyDeserializer(Class<?> paramClass)
  {
    _keyClass = paramClass;
  }
  
  protected abstract Object _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws Exception;
  
  protected double _parseDouble(String paramString)
    throws IllegalArgumentException
  {
    return NumberInput.parseDouble(paramString);
  }
  
  protected int _parseInt(String paramString)
    throws IllegalArgumentException
  {
    return Integer.parseInt(paramString);
  }
  
  protected long _parseLong(String paramString)
    throws IllegalArgumentException
  {
    return Long.parseLong(paramString);
  }
  
  public final Object deserializeKey(String paramString, DeserializationContext paramDeserializationContext)
    throws IOException, JsonProcessingException
  {
    Object localObject1;
    if (paramString == null) {
      localObject1 = null;
    }
    for (;;)
    {
      return localObject1;
      try
      {
        Object localObject2 = _parse(paramString, paramDeserializationContext);
        localObject1 = localObject2;
        if (localObject2 != null) {
          continue;
        }
        throw paramDeserializationContext.weirdKeyException(_keyClass, paramString, "not a valid representation");
      }
      catch (Exception localException)
      {
        throw paramDeserializationContext.weirdKeyException(_keyClass, paramString, "not a valid representation: " + localException.getMessage());
      }
    }
  }
  
  public Class<?> getKeyClass()
  {
    return _keyClass;
  }
  
  static final class BoolKD
    extends StdKeyDeserializer
  {
    BoolKD()
    {
      super();
    }
    
    public Boolean _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws JsonMappingException
    {
      if ("true".equals(paramString)) {
        return Boolean.TRUE;
      }
      if ("false".equals(paramString)) {
        return Boolean.FALSE;
      }
      throw paramDeserializationContext.weirdKeyException(_keyClass, paramString, "value not 'true' or 'false'");
    }
  }
  
  static final class ByteKD
    extends StdKeyDeserializer
  {
    ByteKD()
    {
      super();
    }
    
    public Byte _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws JsonMappingException
    {
      int i = _parseInt(paramString);
      if ((i < -128) || (i > 255)) {
        throw paramDeserializationContext.weirdKeyException(_keyClass, paramString, "overflow, value can not be represented as 8-bit value");
      }
      return Byte.valueOf((byte)i);
    }
  }
  
  static final class CalendarKD
    extends StdKeyDeserializer
  {
    protected CalendarKD()
    {
      super();
    }
    
    public Calendar _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws IllegalArgumentException, JsonMappingException
    {
      paramString = paramDeserializationContext.parseDate(paramString);
      if (paramString == null) {
        return null;
      }
      return paramDeserializationContext.constructCalendar(paramString);
    }
  }
  
  static final class CharKD
    extends StdKeyDeserializer
  {
    CharKD()
    {
      super();
    }
    
    public Character _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws JsonMappingException
    {
      if (paramString.length() == 1) {
        return Character.valueOf(paramString.charAt(0));
      }
      throw paramDeserializationContext.weirdKeyException(_keyClass, paramString, "can only convert 1-character Strings");
    }
  }
  
  static final class DateKD
    extends StdKeyDeserializer
  {
    protected DateKD()
    {
      super();
    }
    
    public Date _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws IllegalArgumentException, JsonMappingException
    {
      return paramDeserializationContext.parseDate(paramString);
    }
  }
  
  static final class DoubleKD
    extends StdKeyDeserializer
  {
    DoubleKD()
    {
      super();
    }
    
    public Double _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws JsonMappingException
    {
      return Double.valueOf(_parseDouble(paramString));
    }
  }
  
  static final class EnumKD
    extends StdKeyDeserializer
  {
    protected final AnnotatedMethod _factory;
    protected final EnumResolver<?> _resolver;
    
    protected EnumKD(EnumResolver<?> paramEnumResolver, AnnotatedMethod paramAnnotatedMethod)
    {
      super();
      _resolver = paramEnumResolver;
      _factory = paramAnnotatedMethod;
    }
    
    public Object _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws JsonMappingException
    {
      if (_factory != null) {}
      Enum localEnum;
      do
      {
        try
        {
          Object localObject1 = _factory.call1(paramString);
          return localObject1;
        }
        catch (Exception localException)
        {
          ClassUtil.unwrapAndThrowAsIAE(localException);
        }
        localEnum = _resolver.findEnum(paramString);
        Object localObject2 = localEnum;
      } while (localEnum != null);
      throw paramDeserializationContext.weirdKeyException(_keyClass, paramString, "not one of values for Enum class");
    }
  }
  
  static final class FloatKD
    extends StdKeyDeserializer
  {
    FloatKD()
    {
      super();
    }
    
    public Float _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws JsonMappingException
    {
      return Float.valueOf((float)_parseDouble(paramString));
    }
  }
  
  static final class IntKD
    extends StdKeyDeserializer
  {
    IntKD()
    {
      super();
    }
    
    public Integer _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws JsonMappingException
    {
      return Integer.valueOf(_parseInt(paramString));
    }
  }
  
  static final class LongKD
    extends StdKeyDeserializer
  {
    LongKD()
    {
      super();
    }
    
    public Long _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws JsonMappingException
    {
      return Long.valueOf(_parseLong(paramString));
    }
  }
  
  static final class ShortKD
    extends StdKeyDeserializer
  {
    ShortKD()
    {
      super();
    }
    
    public Short _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws JsonMappingException
    {
      int i = _parseInt(paramString);
      if ((i < 32768) || (i > 32767)) {
        throw paramDeserializationContext.weirdKeyException(_keyClass, paramString, "overflow, value can not be represented as 16-bit value");
      }
      return Short.valueOf((short)i);
    }
  }
  
  static final class StringCtorKeyDeserializer
    extends StdKeyDeserializer
  {
    protected final Constructor<?> _ctor;
    
    public StringCtorKeyDeserializer(Constructor<?> paramConstructor)
    {
      super();
      _ctor = paramConstructor;
    }
    
    public Object _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws Exception
    {
      return _ctor.newInstance(new Object[] { paramString });
    }
  }
  
  static final class StringFactoryKeyDeserializer
    extends StdKeyDeserializer
  {
    final Method _factoryMethod;
    
    public StringFactoryKeyDeserializer(Method paramMethod)
    {
      super();
      _factoryMethod = paramMethod;
    }
    
    public Object _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws Exception
    {
      return _factoryMethod.invoke(null, new Object[] { paramString });
    }
  }
  
  static final class StringKD
    extends StdKeyDeserializer
  {
    private static final StringKD sObject = new StringKD(Object.class);
    private static final StringKD sString = new StringKD(String.class);
    
    private StringKD(Class<?> paramClass)
    {
      super();
    }
    
    public static StringKD forType(Class<?> paramClass)
    {
      if (paramClass == String.class) {
        return sString;
      }
      if (paramClass == Object.class) {
        return sObject;
      }
      return new StringKD(paramClass);
    }
    
    public String _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws JsonMappingException
    {
      return paramString;
    }
  }
  
  static final class UuidKD
    extends StdKeyDeserializer
  {
    protected UuidKD()
    {
      super();
    }
    
    public UUID _parse(String paramString, DeserializationContext paramDeserializationContext)
      throws IllegalArgumentException, JsonMappingException
    {
      return UUID.fromString(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */