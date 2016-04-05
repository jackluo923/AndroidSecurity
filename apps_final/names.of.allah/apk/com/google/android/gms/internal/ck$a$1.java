package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

class ck$a$1
  implements Runnable
{
  private final WeakReference<ck> oM = new WeakReference(oN);
  
  ck$a$1(ck.a parama, ck paramck) {}
  
  public void run()
  {
    ck localck = (ck)oM.get();
    if ((!ck.a.a(oO)) && (localck != null))
    {
      localck.aW();
      oO.aX();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ck.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */