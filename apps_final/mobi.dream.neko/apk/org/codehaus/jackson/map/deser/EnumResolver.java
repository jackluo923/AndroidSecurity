package org.codehaus.jackson.map.deser;

import java.util.HashMap;

@Deprecated
public final class EnumResolver<T extends Enum<T>>
  extends org.codehaus.jackson.map.util.EnumResolver<T>
{
  private EnumResolver(Class<T> paramClass, T[] paramArrayOfT, HashMap<String, T> paramHashMap)
  {
    super(paramClass, paramArrayOfT, paramHashMap);
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.deser.EnumResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */