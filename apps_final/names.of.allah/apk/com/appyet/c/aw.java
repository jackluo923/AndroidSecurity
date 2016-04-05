package com.appyet.c;

import android.view.View;
import android.view.Window;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.appyet.d.d;

final class aw
  implements Runnable
{
  aw(at paramat) {}
  
  public final void run()
  {
    try
    {
      if (!at.d(a))
      {
        if (a != null) {
          a.getSherlockActivity().getSupportActionBar().hide();
        }
        a.getSherlockActivity().getWindow().getDecorView().setSystemUiVisibility(1);
      }
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */