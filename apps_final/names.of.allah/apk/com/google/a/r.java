package com.google.a;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class r
{
  public String a;
  private com.google.a.b.s b = com.google.a.b.s.a;
  private af c = af.a;
  private j d = d.a;
  private final Map<Type, s<?>> e = new HashMap();
  private final List<al> f = new ArrayList();
  private final List<al> g = new ArrayList();
  private boolean h;
  private int i = 2;
  private int j = 2;
  private boolean k;
  private boolean l;
  private boolean m = true;
  private boolean n;
  private boolean o;
  
  public final k a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.addAll(f);
    Collections.reverse(localArrayList);
    localArrayList.addAll(g);
    Object localObject = a;
    int i1 = i;
    int i2 = j;
    if ((localObject != null) && (!"".equals(((String)localObject).trim()))) {}
    for (localObject = new a((String)localObject);; localObject = new a(i1, i2))
    {
      localArrayList.add(ai.a(com.google.a.c.a.a(java.util.Date.class), localObject));
      localArrayList.add(ai.a(com.google.a.c.a.a(Timestamp.class), localObject));
      localArrayList.add(ai.a(com.google.a.c.a.a(java.sql.Date.class), localObject));
      do
      {
        return new k(b, d, e, h, k, o, m, n, l, c, localArrayList);
      } while ((i1 == 2) || (i2 == 2));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.a.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */