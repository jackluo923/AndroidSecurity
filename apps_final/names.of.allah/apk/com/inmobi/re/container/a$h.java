package com.inmobi.re.container;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.VideoView;
import com.inmobi.commons.internal.Log;

class a$h
  implements View.OnKeyListener
{
  a$h(a parama) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((4 == paramKeyEvent.getKeyCode()) && (paramKeyEvent.getAction() == 0))
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Back Button pressed when html5 video is playing");
      IMWebView.j(a.a).stopPlayback();
      IMWebView.l(a.a);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */