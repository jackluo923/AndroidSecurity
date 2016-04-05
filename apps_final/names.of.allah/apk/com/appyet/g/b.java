package com.appyet.g;

import com.appyet.g.b.j;
import com.appyet.g.c.a;

public final class b
{
  private String a;
  private Object[] b;
  
  public b(String paramString, Object[] paramArrayOfObject)
  {
    a = paramString;
    b = paramArrayOfObject;
  }
  
  public final String a()
  {
    a locala = new a();
    Object localObject1 = new com.appyet.g.c.b("methodCall");
    a = ((com.appyet.g.c.b)localObject1);
    com.appyet.g.c.b localb1 = new com.appyet.g.c.b("methodName");
    a = a;
    ((com.appyet.g.c.b)localObject1).a(localb1);
    if ((b != null) && (b.length > 0))
    {
      localb1 = new com.appyet.g.c.b("params");
      ((com.appyet.g.c.b)localObject1).a(localb1);
      localObject1 = b;
      int j = localObject1.length;
      int i = 0;
      while (i < j)
      {
        Object localObject2 = localObject1[i];
        com.appyet.g.c.b localb2 = new com.appyet.g.c.b("param");
        com.appyet.g.c.b localb3 = new com.appyet.g.c.b("value");
        localb2.a(localb3);
        localb3.a(j.a().a(localObject2));
        localb1.a(localb2);
        i += 1;
      }
    }
    return locala.toString();
  }
}

/* Location:
 * Qualified Name:     com.appyet.g.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */