package com.appyet.manager;

import android.media.MediaPlayer;
import android.view.View;
import android.view.View.OnClickListener;
import com.appyet.d.d;

final class au
  implements View.OnClickListener
{
  au(as paramas) {}
  
  public final void onClick(View paramView)
  {
    try
    {
      if ((as.f(a) != null) && (as.f(a).isPlaying())) {
        a.h();
      }
      for (;;)
      {
        as.p(a);
        return;
        if (as.f(a).getCurrentPosition() == as.f(a).getDuration()) {
          as.f(a).seekTo(0);
        }
        a.j();
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
 * Qualified Name:     com.appyet.manager.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */