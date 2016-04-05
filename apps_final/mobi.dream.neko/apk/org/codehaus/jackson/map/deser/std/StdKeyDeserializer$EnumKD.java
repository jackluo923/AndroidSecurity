package org.codehaus.jackson.map.deser.std;

import org.codehaus.jackson.map.DeserializationContext;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.introspect.AnnotatedMethod;
import org.codehaus.jackson.map.util.ClassUtil;
import org.codehaus.jackson.map.util.EnumResolver;

final class StdKeyDeserializer$EnumKD
  extends StdKeyDeserializer
{
  protected final AnnotatedMethod _factory;
  protected final EnumResolver<?> _resolver;
  
  protected StdKeyDeserializer$EnumKD(EnumResolver<?> paramEnumResolver, AnnotatedMethod paramAnnotatedMethod)
  {
    super(paramEnumResolver.getEnumClass());
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

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.EnumKD
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */