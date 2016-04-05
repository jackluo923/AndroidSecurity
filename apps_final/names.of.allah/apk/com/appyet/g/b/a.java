package com.appyet.g.b;

import com.appyet.g.c.b;
import com.appyet.g.l;
import com.appyet.g.n;
import java.util.Iterator;

public final class a
  implements i
{
  public final b a(Object paramObject)
  {
    Object localObject1 = (Iterable)paramObject;
    paramObject = new b("array");
    b localb1 = new b("data");
    ((b)paramObject).a(localb1);
    try
    {
      localObject1 = ((Iterable)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject2 = ((Iterator)localObject1).next();
        b localb2 = new b("value");
        localb2.a(j.a().a(localObject2));
        localb1.a(localb2);
      }
      return (b)paramObject;
    }
    catch (l paramObject)
    {
      throw new n((Exception)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */