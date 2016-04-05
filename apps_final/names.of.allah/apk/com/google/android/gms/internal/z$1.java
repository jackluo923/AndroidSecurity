package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

class z$1
  implements Runnable
{
  private final WeakReference<v> lj = new WeakReference(lk);
  
  z$1(z paramz, v paramv) {}
  
  public void run()
  {
    z.a(ll, false);
    v localv = (v)lj.get();
    if (localv != null) {
      localv.b(z.a(ll));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.z.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */