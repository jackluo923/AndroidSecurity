package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.ik;

class ca$a
  implements da.a
{
  ca$a(ca paramca) {}
  
  public void a(ap paramap)
  {
    ca.a(agq, paramap.dg());
  }
  
  public void b(ap paramap)
  {
    ca.a(agq, paramap.dg());
    bh.C("Permanent failure dispatching hitId: " + paramap.dg());
  }
  
  public void c(ap paramap)
  {
    long l = paramap.lI();
    if (l == 0L) {
      ca.a(agq, paramap.dg(), ca.a(agq).currentTimeMillis());
    }
    while (l + 14400000L >= ca.a(agq).currentTimeMillis()) {
      return;
    }
    ca.a(agq, paramap.dg());
    bh.C("Giving up on failed hitId: " + paramap.dg());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ca.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */