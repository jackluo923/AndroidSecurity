package com.inmobi.androidsdk;

import android.app.Activity;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import com.inmobi.re.container.IMWebView;

class IMBrowserActivity$a
  implements View.OnKeyListener
{
  IMBrowserActivity$a(IMBrowserActivity paramIMBrowserActivity) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((4 == paramKeyEvent.getKeyCode()) && (paramKeyEvent.getAction() == 0))
    {
      if (IMBrowserActivity.c() != null) {
        IMBrowserActivity.c().close();
      }
      a.finish();
      IMBrowserActivity.b().finish();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.IMBrowserActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */