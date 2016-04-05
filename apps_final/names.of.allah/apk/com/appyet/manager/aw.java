package com.appyet.manager;

import android.media.MediaPlayer;
import android.view.View;
import android.view.View.OnClickListener;
import com.appyet.d.d;

final class aw
  implements View.OnClickListener
{
  aw(as paramas) {}
  
  public final void onClick(View paramView)
  {
    try
    {
      if ((as.f(a) != null) && (as.f(a).isPlaying())) {
        a.a(30);
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
 * Qualified Name:     com.appyet.manager.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */