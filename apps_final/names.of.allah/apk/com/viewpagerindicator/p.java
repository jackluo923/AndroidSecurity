package com.viewpagerindicator;

import android.graphics.Paint;

final class p
  implements Runnable
{
  p(UnderlinePageIndicator paramUnderlinePageIndicator) {}
  
  public final void run()
  {
    if (!UnderlinePageIndicator.a(a)) {}
    int i;
    do
    {
      return;
      i = Math.max(UnderlinePageIndicator.b(a).getAlpha() - UnderlinePageIndicator.c(a), 0);
      UnderlinePageIndicator.b(a).setAlpha(i);
      a.invalidate();
    } while (i <= 0);
    a.postDelayed(this, 30L);
  }
}

/* Location:
 * Qualified Name:     com.viewpagerindicator.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */