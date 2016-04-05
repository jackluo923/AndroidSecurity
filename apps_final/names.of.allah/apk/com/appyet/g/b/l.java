package com.appyet.g.b;

import com.appyet.g.c.b;
import com.appyet.g.n;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class l
  implements i
{
  public final b a(Object paramObject)
  {
    localb1 = new b("struct");
    try
    {
      paramObject = ((Map)paramObject).entrySet().iterator();
      while (((Iterator)paramObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)paramObject).next();
        b localb2 = new b("member");
        b localb3 = new b("name");
        b localb4 = new b("value");
        a = ((String)localEntry.getKey());
        localb4.a(j.a().a(localEntry.getValue()));
        localb2.a(localb3);
        localb2.a(localb4);
        localb1.a(localb2);
      }
      return localb1;
    }
    catch (com.appyet.g.l paramObject)
    {
      throw new n((Exception)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.b.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */