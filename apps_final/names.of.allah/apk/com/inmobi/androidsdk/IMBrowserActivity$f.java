package com.inmobi.androidsdk;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.inmobi.re.container.IMWebView;

class IMBrowserActivity$f
  implements View.OnTouchListener
{
  IMBrowserActivity$f(IMBrowserActivity paramIMBrowserActivity) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 1)
    {
      paramView.setBackgroundColor(-7829368);
      if (IMBrowserActivity.a(a).canGoForward()) {
        IMBrowserActivity.a(a).goForward();
      }
    }
    while (paramMotionEvent.getAction() != 0) {
      return true;
    }
    paramView.setBackgroundColor(-16711681);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.IMBrowserActivity.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */