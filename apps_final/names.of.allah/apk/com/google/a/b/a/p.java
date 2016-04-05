package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.al;
import com.google.a.b.af;
import com.google.a.b.f;
import com.google.a.c.a;
import com.google.a.j;
import com.google.a.k;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.LinkedHashMap;
import java.util.Map;

public final class p
  implements al
{
  private final f a;
  private final j b;
  private final com.google.a.b.s c;
  
  public p(f paramf, j paramj, com.google.a.b.s params)
  {
    a = paramf;
    b = paramj;
    c = params;
  }
  
  private Map<String, s> a(k paramk, a<?> parama, Class<?> paramClass)
  {
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    if (paramClass.isInterface()) {
      return localLinkedHashMap;
    }
    Type localType = b;
    while (paramClass != Object.class)
    {
      Field[] arrayOfField = paramClass.getDeclaredFields();
      int j = arrayOfField.length;
      int i = 0;
      while (i < j)
      {
        Field localField = arrayOfField[i];
        boolean bool1 = a(localField, true);
        boolean bool2 = a(localField, false);
        if ((bool1) || (bool2))
        {
          localField.setAccessible(true);
          Object localObject2 = com.google.a.b.b.a(b, paramClass, localField.getGenericType());
          Object localObject1 = (com.google.a.a.b)localField.getAnnotation(com.google.a.a.b.class);
          if (localObject1 == null) {}
          for (localObject1 = b.a(localField);; localObject1 = ((com.google.a.a.b)localObject1).a())
          {
            localObject2 = a.a((Type)localObject2);
            localObject1 = new q(this, (String)localObject1, bool1, bool2, paramk, (a)localObject2, localField, af.a(a));
            localObject1 = (s)localLinkedHashMap.put(g, localObject1);
            if (localObject1 == null) {
              break;
            }
            throw new IllegalArgumentException(localType + " declares multiple JSON fields named " + g);
          }
        }
        i += 1;
      }
      parama = a.a(com.google.a.b.b.a(b, paramClass, paramClass.getGenericSuperclass()));
      paramClass = a;
    }
    return localLinkedHashMap;
  }
  
  private boolean a(Field paramField, boolean paramBoolean)
  {
    return (!c.a(paramField.getType(), paramBoolean)) && (!c.a(paramField, paramBoolean));
  }
  
  public final <T> ak<T> a(k paramk, a<T> parama)
  {
    Class localClass = a;
    if (!Object.class.isAssignableFrom(localClass)) {
      return null;
    }
    return new r(a.a(parama), a(paramk, parama, localClass), (byte)0);
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */