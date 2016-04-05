package com.google.android.gms.analytics;

import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;

class s$b
  extends TimerTask
{
  private s$b(s params) {}
  
  public void run()
  {
    if ((s.b(ut) == s.a.uw) && (s.e(ut).isEmpty()) && (s.f(ut) + s.g(ut) < s.h(ut).currentTimeMillis()))
    {
      aa.C("Disconnecting due to inactivity");
      s.i(ut);
      return;
    }
    s.j(ut).schedule(new b(ut), s.g(ut));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.s.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */