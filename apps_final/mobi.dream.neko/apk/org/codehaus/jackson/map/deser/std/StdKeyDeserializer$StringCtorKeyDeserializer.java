package org.codehaus.jackson.map.deser.std;

import java.lang.reflect.Constructor;
import org.codehaus.jackson.map.DeserializationContext;

final class StdKeyDeserializer$StringCtorKeyDeserializer
  extends StdKeyDeserializer
{
  protected final Constructor<?> _ctor;
  
  public StdKeyDeserializer$StringCtorKeyDeserializer(Constructor<?> paramConstructor)
  {
    super(paramConstructor.getDeclaringClass());
    _ctor = paramConstructor;
  }
  
  public Object _parse(String paramString, DeserializationContext paramDeserializationContext)
    throws Exception
  {
    return _ctor.newInstance(new Object[] { paramString });
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.std.StdKeyDeserializer.StringCtorKeyDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */