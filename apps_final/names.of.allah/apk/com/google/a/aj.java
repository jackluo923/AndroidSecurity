package com.google.a;

final class aj
  implements al
{
  private final com.google.a.c.a<?> a;
  private final boolean b;
  private final Class<?> c;
  private final ad<?> d;
  private final v<?> e;
  
  private aj(Object paramObject, com.google.a.c.a<?> parama)
  {
    ad localad;
    if ((paramObject instanceof ad))
    {
      localad = (ad)paramObject;
      d = localad;
      if (!(paramObject instanceof v)) {
        break label81;
      }
      paramObject = (v)paramObject;
      label33:
      e = ((v)paramObject);
      if ((d == null) && (e == null)) {
        break label86;
      }
    }
    label81:
    label86:
    for (boolean bool = true;; bool = false)
    {
      com.google.a.b.a.a(bool);
      a = parama;
      b = false;
      c = null;
      return;
      localad = null;
      break;
      paramObject = null;
      break label33;
    }
  }
  
  public final <T> ak<T> a(k paramk, com.google.a.c.a<T> parama)
  {
    boolean bool;
    if (a != null) {
      if ((a.equals(parama)) || ((b) && (a.b == a))) {
        bool = true;
      }
    }
    while (bool)
    {
      return new ai(d, e, paramk, parama, this, (byte)0);
      bool = false;
      continue;
      bool = c.isAssignableFrom(a);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.a.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */