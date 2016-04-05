package com.google.a.b;

import com.google.a.x;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

final class n
  implements ae<T>
{
  n(f paramf, Type paramType) {}
  
  public final T a()
  {
    if ((a instanceof ParameterizedType))
    {
      Type localType = ((ParameterizedType)a).getActualTypeArguments()[0];
      if ((localType instanceof Class)) {
        return EnumSet.noneOf((Class)localType);
      }
      throw new x("Invalid EnumSet type: " + a.toString());
    }
    throw new x("Invalid EnumSet type: " + a.toString());
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */