package com.appyet.manager;

import android.view.View;
import android.view.View.OnClickListener;
import com.appyet.activity.MediaPlayerActivity;
import com.appyet.d.d;

final class ay
  implements View.OnClickListener
{
  ay(as paramas) {}
  
  public final void onClick(View paramView)
  {
    try
    {
      if (as.f(a) != null)
      {
        a.d();
        paramView = a;
        as.e();
      }
      if (as.j(a) != null) {
        as.j(a).finish();
      }
      return;
    }
    catch (Exception paramView)
    {
      d.a(paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */