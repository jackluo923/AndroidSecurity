package com.google.android.gms.internal;

class bq$1
  implements Runnable
{
  bq$1(bq parambq, bp parambp) {}
  
  public void run()
  {
    synchronized (bq.a(nI))
    {
      if (bq.b(nI) != -2) {
        return;
      }
      bq.a(nI, bq.c(nI));
      if (bq.d(nI) == null)
      {
        nI.g(4);
        return;
      }
    }
    nH.a(nI);
    bq.a(nI, nH);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */