package org.codehaus.jackson.map.deser.std;

import java.lang.reflect.Method;
import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$StringFactoryKeyDeserializer
  extends StdKeyDeserializer
{
  final Method _factoryMethod;
  
  public StdKeyDeserializer$StringFactoryKeyDeserializer(Method paramMethod)
  {
    super(paramMethod.getDeclaringClass());
    _factoryMethod = paramMethod;
  }
  
  public Object _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws Exception
  {
    return _factoryMethod.invoke(null, new Object[] { paramString });
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.StringFactoryKeyDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */