package com.inmobi.re.container;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import com.inmobi.commons.internal.Log;

class a$a
  implements View.OnKeyListener
{
  a$a(a parama) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "Back Button pressed when html5 video is playing");
    IMWebView.l(a.a);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */