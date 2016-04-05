package com.google.android.gms.internal;

public final class z
{
  private final z.a ld;
  private final Runnable le;
  private aj lf;
  private boolean lg = false;
  private boolean lh = false;
  private long li = 0L;
  
  public z(v paramv)
  {
    this(paramv, new z.a(eu.ss));
  }
  
  z(v paramv, z.a parama)
  {
    ld = parama;
    le = new z.1(this, paramv);
  }
  
  public final void a(aj paramaj, long paramLong)
  {
    if (lg) {
      ev.D("An ad refresh is already scheduled.");
    }
    do
    {
      return;
      lf = paramaj;
      lg = true;
      li = paramLong;
    } while (lh);
    ev.B("Scheduling ad refresh " + paramLong + " milliseconds from now.");
    ld.postDelayed(le, paramLong);
  }
  
  public final void cancel()
  {
    lg = false;
    ld.removeCallbacks(le);
  }
  
  public final void d(aj paramaj)
  {
    a(paramaj, 60000L);
  }
  
  public final void pause()
  {
    lh = true;
    if (lg) {
      ld.removeCallbacks(le);
    }
  }
  
  public final void resume()
  {
    lh = false;
    if (lg)
    {
      lg = false;
      a(lf, li);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */