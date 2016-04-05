package com.google.a.b;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Arrays;

final class d
  implements Serializable, ParameterizedType
{
  private final Type a;
  private final Type b;
  private final Type[] c;
  
  public d(Type paramType1, Type paramType2, Type... paramVarArgs)
  {
    boolean bool1;
    if ((paramType2 instanceof Class))
    {
      Class localClass = (Class)paramType2;
      if ((paramType1 != null) || (localClass.getEnclosingClass() == null))
      {
        bool1 = true;
        a.a(bool1);
        bool1 = bool2;
        if (paramType1 != null)
        {
          if (localClass.getEnclosingClass() == null) {
            break label161;
          }
          bool1 = bool2;
        }
        label63:
        a.a(bool1);
      }
    }
    else
    {
      if (paramType1 != null) {
        break label167;
      }
    }
    label161:
    label167:
    for (paramType1 = null;; paramType1 = b.a(paramType1))
    {
      a = paramType1;
      b = b.a(paramType2);
      c = ((Type[])paramVarArgs.clone());
      while (i < c.length)
      {
        a.a(c[i]);
        b.e(c[i]);
        c[i] = b.a(c[i]);
        i += 1;
      }
      bool1 = false;
      break;
      bool1 = false;
      break label63;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof ParameterizedType)) && (b.a(this, (ParameterizedType)paramObject));
  }
  
  public final Type[] getActualTypeArguments()
  {
    return (Type[])c.clone();
  }
  
  public final Type getOwnerType()
  {
    return a;
  }
  
  public final Type getRawType()
  {
    return b;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(c) ^ b.hashCode() ^ b.a(a);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder((c.length + 1) * 30);
    localStringBuilder.append(b.c(b));
    if (c.length == 0) {
      return localStringBuilder.toString();
    }
    localStringBuilder.append("<").append(b.c(c[0]));
    int i = 1;
    while (i < c.length)
    {
      localStringBuilder.append(", ").append(b.c(c[i]));
      i += 1;
    }
    return ">";
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */