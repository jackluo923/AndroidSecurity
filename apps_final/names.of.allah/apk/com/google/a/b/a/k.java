package com.google.a.b.a;

import com.google.a.ak;
import com.google.a.al;
import com.google.a.b.b;
import com.google.a.b.f;
import com.google.a.c.a;
import java.lang.reflect.Type;
import java.util.Map;

public final class k
  implements al
{
  final boolean a;
  private final f b;
  
  public k(f paramf, boolean paramBoolean)
  {
    b = paramf;
    a = paramBoolean;
  }
  
  public final <T> ak<T> a(com.google.a.k paramk, a<T> parama)
  {
    Object localObject = b;
    if (!Map.class.isAssignableFrom(a)) {
      return null;
    }
    Type[] arrayOfType = b.b((Type)localObject, b.b((Type)localObject));
    localObject = arrayOfType[0];
    if ((localObject == Boolean.TYPE) || (localObject == Boolean.class)) {}
    for (localObject = y.f;; localObject = paramk.a(a.a((Type)localObject)))
    {
      ak localak = paramk.a(a.a(arrayOfType[1]));
      parama = b.a(parama);
      return new l(this, paramk, arrayOfType[0], (ak)localObject, arrayOfType[1], localak, parama);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.a.b.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */