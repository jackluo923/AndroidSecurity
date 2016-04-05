package com.google.a.b.a;

import com.google.a.a.b;
import com.google.a.ak;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

final class bf<T extends Enum<T>>
  extends ak<T>
{
  private final Map<String, T> a = new HashMap();
  private final Map<T, String> b = new HashMap();
  
  public bf(Class<T> paramClass)
  {
    for (;;)
    {
      try
      {
        Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
        int j = arrayOfEnum.length;
        int i = 0;
        if (i < j)
        {
          Enum localEnum = arrayOfEnum[i];
          String str = localEnum.name();
          b localb = (b)paramClass.getField(str).getAnnotation(b.class);
          if (localb != null)
          {
            str = localb.a();
            a.put(str, localEnum);
            b.put(localEnum, str);
            i += 1;
          }
        }
        else
        {
          return;
        }
      }
      catch (NoSuchFieldException paramClass)
      {
        throw new AssertionError();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */