package com.google.android.gms.analytics;

import android.app.Activity;
import java.util.HashMap;
import java.util.Map;

class Tracker$a
  implements GoogleAnalytics.a
{
  private i ur;
  private boolean xl = false;
  private int xm = 0;
  private long xn = -1L;
  private boolean xo = false;
  private long xp;
  
  public Tracker$a(Tracker paramTracker)
  {
    ur = new Tracker.a.1(this, paramTracker);
  }
  
  private void dw()
  {
    GoogleAnalytics localGoogleAnalytics = GoogleAnalytics.dd();
    if (localGoogleAnalytics == null)
    {
      aa.A("GoogleAnalytics isn't initialized for the Tracker!");
      return;
    }
    if ((xn >= 0L) || (xl))
    {
      localGoogleAnalytics.a(Tracker.b(xq));
      return;
    }
    localGoogleAnalytics.b(Tracker.b(xq));
  }
  
  public long dt()
  {
    return xn;
  }
  
  public boolean du()
  {
    return xl;
  }
  
  public boolean dv()
  {
    boolean bool = xo;
    xo = false;
    return bool;
  }
  
  boolean dx()
  {
    return ur.currentTimeMillis() >= xp + Math.max(1000L, xn);
  }
  
  public void enableAutoActivityTracking(boolean paramBoolean)
  {
    xl = paramBoolean;
    dw();
  }
  
  public void h(Activity paramActivity)
  {
    u.cP().a(u.a.wb);
    if ((xm == 0) && (dx())) {
      xo = true;
    }
    xm += 1;
    HashMap localHashMap;
    Tracker localTracker;
    if (xl)
    {
      localHashMap = new HashMap();
      localHashMap.put("&t", "screenview");
      u.cP().u(true);
      localTracker = xq;
      if (Tracker.c(xq) == null) {
        break label121;
      }
    }
    label121:
    for (paramActivity = Tracker.c(xq).j(paramActivity);; paramActivity = paramActivity.getClass().getCanonicalName())
    {
      localTracker.set("&cd", paramActivity);
      xq.send(localHashMap);
      u.cP().u(false);
      return;
    }
  }
  
  public void i(Activity paramActivity)
  {
    u.cP().a(u.a.wc);
    xm -= 1;
    xm = Math.max(0, xm);
    if (xm == 0) {
      xp = ur.currentTimeMillis();
    }
  }
  
  public void setSessionTimeout(long paramLong)
  {
    xn = paramLong;
    dw();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.Tracker.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */