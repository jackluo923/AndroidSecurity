package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.c.j;
import com.google.android.gms.internal.ik;

class o$c
  implements bg<c.j>
{
  private o$c(o paramo) {}
  
  public void a(bg.a parama)
  {
    if (o.f(aeP) != null) {
      aeP.b(o.f(aeP));
    }
    for (;;)
    {
      o.a(aeP, 3600000L);
      return;
      aeP.b(aeP.ap(Status.En));
    }
  }
  
  public void b(c.j paramj)
  {
    synchronized (aeP)
    {
      if (fK == null)
      {
        if (caeP).fK == null)
        {
          bh.A("Current resource is null; network resource is also null");
          o.a(aeP, 3600000L);
          return;
        }
        fK = caeP).fK;
      }
      o.a(aeP, paramj, o.a(aeP).currentTimeMillis(), false);
      bh.C("setting refresh time to current time: " + o.d(aeP));
      if (!o.e(aeP)) {
        o.a(aeP, paramj);
      }
      return;
    }
  }
  
  public void lq() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.o.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */