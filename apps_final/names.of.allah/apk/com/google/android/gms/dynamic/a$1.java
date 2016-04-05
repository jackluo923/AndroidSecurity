package com.google.android.gms.dynamic;

import java.util.Iterator;
import java.util.LinkedList;

class a$1
  implements f<T>
{
  a$1(a parama) {}
  
  public void a(T paramT)
  {
    a.a(LY, paramT);
    paramT = a.a(LY).iterator();
    while (paramT.hasNext()) {
      ((a.a)paramT.next()).b(a.b(LY));
    }
    a.a(LY).clear();
    a.a(LY, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */