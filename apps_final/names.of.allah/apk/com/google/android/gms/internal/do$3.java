package com.google.android.gms.internal;

class do$3
  implements Runnable
{
  do$3(do paramdo) {}
  
  public void run()
  {
    for (;;)
    {
      synchronized (do.a(pE))
      {
        if (cpE).errorCode != -2) {
          return;
        }
        do.d(pE).bW().a(pE);
        if (cpE).errorCode == -3)
        {
          ev.C("Loading URL in WebView: " + cpE).oy);
          do.d(pE).loadUrl(cpE).oy);
          return;
        }
      }
      ev.C("Loading HTML in WebView.");
      do.d(pE).loadDataWithBaseURL(ep.v(cpE).oy), cpE).qb, "text/html", "UTF-8", null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.do.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */