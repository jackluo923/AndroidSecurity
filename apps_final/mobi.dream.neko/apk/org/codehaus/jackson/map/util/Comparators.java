package org.codehaus.jackson.map.util;

import java.lang.reflect.Array;

public class Comparators
{
  public static Object getArrayComparator(Object paramObject)
  {
    new Object()
    {
      public boolean equals(Object paramAnonymousObject)
      {
        if (paramAnonymousObject == this) {
          return true;
        }
        if ((paramAnonymousObject == null) || (paramAnonymousObject.getClass() != val$defaultValue.getClass())) {
          return false;
        }
        if (Array.getLength(paramAnonymousObject) != val$length) {
          return false;
        }
        int i = 0;
        label43:
        Object localObject1;
        Object localObject2;
        if (i < val$length)
        {
          localObject1 = Array.get(val$defaultValue, i);
          localObject2 = Array.get(paramAnonymousObject, i);
          if (localObject1 != localObject2) {
            break label83;
          }
        }
        label83:
        while ((localObject1 == null) || (localObject1.equals(localObject2)))
        {
          i += 1;
          break label43;
          break;
        }
        return false;
      }
    };
  }
}

/* Location:
 * Qualified Name:     org.codehaus.jackson.map.util.Comparators
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */