package com.google.a.b;

import com.google.a.c.a;
import com.google.a.s;
import java.lang.reflect.Constructor;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

public final class f
{
  private final Map<Type, s<?>> a;
  
  public f(Map<Type, s<?>> paramMap)
  {
    a = paramMap;
  }
  
  private <T> ae<T> a(Class<? super T> paramClass)
  {
    try
    {
      paramClass = paramClass.getDeclaredConstructor(new Class[0]);
      if (!paramClass.isAccessible()) {
        paramClass.setAccessible(true);
      }
      paramClass = new l(this, paramClass);
      return paramClass;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  public final <T> ae<T> a(a<T> parama)
  {
    Type localType = b;
    Class localClass = a;
    parama = (s)a.get(localType);
    Object localObject;
    if (parama != null) {
      localObject = new g(this, parama, localType);
    }
    do
    {
      return (ae<T>)localObject;
      parama = (s)a.get(localClass);
      if (parama != null) {
        return new k(this, parama, localType);
      }
      parama = a(localClass);
      localObject = parama;
    } while (parama != null);
    if (Collection.class.isAssignableFrom(localClass)) {
      if (SortedSet.class.isAssignableFrom(localClass)) {
        parama = new m(this);
      }
    }
    for (;;)
    {
      localObject = parama;
      if (parama != null) {
        break;
      }
      return new j(this, localClass, localType);
      if (EnumSet.class.isAssignableFrom(localClass))
      {
        parama = new n(this, localType);
      }
      else if (Set.class.isAssignableFrom(localClass))
      {
        parama = new o(this);
      }
      else if (Queue.class.isAssignableFrom(localClass))
      {
        parama = new p(this);
      }
      else
      {
        parama = new q(this);
        continue;
        if (Map.class.isAssignableFrom(localClass))
        {
          if (SortedMap.class.isAssignableFrom(localClass)) {
            parama = new r(this);
          } else if (((localType instanceof ParameterizedType)) && (!String.class.isAssignableFrom(agetActualTypeArguments0a))) {
            parama = new h(this);
          } else {
            parama = new i(this);
          }
        }
        else {
          parama = null;
        }
      }
    }
  }
  
  public final String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */