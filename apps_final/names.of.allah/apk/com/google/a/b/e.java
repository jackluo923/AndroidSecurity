package com.google.a.b;

import java.io.Serializable;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;

final class e
  implements Serializable, WildcardType
{
  private final Type a;
  private final Type b;
  
  public e(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
  {
    if (paramArrayOfType2.length <= 1)
    {
      bool1 = true;
      a.a(bool1);
      if (paramArrayOfType1.length != 1) {
        break label87;
      }
      bool1 = true;
      label27:
      a.a(bool1);
      if (paramArrayOfType2.length != 1) {
        break label97;
      }
      a.a(paramArrayOfType2[0]);
      b.e(paramArrayOfType2[0]);
      if (paramArrayOfType1[0] != Object.class) {
        break label92;
      }
    }
    label87:
    label92:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      a.a(bool1);
      b = b.a(paramArrayOfType2[0]);
      a = Object.class;
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label27;
    }
    label97:
    a.a(paramArrayOfType1[0]);
    b.e(paramArrayOfType1[0]);
    b = null;
    a = b.a(paramArrayOfType1[0]);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof WildcardType)) && (b.a(this, (WildcardType)paramObject));
  }
  
  public final Type[] getLowerBounds()
  {
    if (b != null) {
      return new Type[] { b };
    }
    return b.a;
  }
  
  public final Type[] getUpperBounds()
  {
    return new Type[] { a };
  }
  
  public final int hashCode()
  {
    if (b != null) {}
    for (int i = b.hashCode() + 31;; i = 1) {
      return i ^ a.hashCode() + 31;
    }
  }
  
  public final String toString()
  {
    if (b != null) {
      return "? super " + b.c(b);
    }
    if (a == Object.class) {
      return "?";
    }
    return "? extends " + b.c(a);
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */