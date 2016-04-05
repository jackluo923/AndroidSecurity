package fr.castorflex.android.smoothprogressbar;

import android.os.SystemClock;

final class j
  implements Runnable
{
  j(i parami) {}
  
  public final void run()
  {
    i.a(a, 0.01F * i.a(a));
    if (i.b(a) >= i.c(a))
    {
      i.d(a);
      i.b(a, i.c(a));
    }
    a.scheduleSelf(i.e(a), SystemClock.uptimeMillis() + 16L);
    a.invalidateSelf();
  }
}

/* Location:
 * Qualified Name:     fr.castorflex.android.smoothprogressbar.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */