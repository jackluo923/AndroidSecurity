package uk.co.senab.photoview;

import android.os.Build.VERSION;
import android.view.View;

public final class a
{
  public static void a(View paramView, Runnable paramRunnable)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      paramView.postOnAnimation(paramRunnable);
      return;
    }
    paramView.postDelayed(paramRunnable, 16L);
  }
}

/* Location:
 * Qualified Name:     uk.co.senab.photoview.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */