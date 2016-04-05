package com.inmobi.re.container;

import android.view.ViewGroup;
import java.util.concurrent.atomic.AtomicBoolean;

class IMWebView$g
  implements Runnable
{
  IMWebView$g(IMWebView paramIMWebView) {}
  
  public void run()
  {
    if (a.getParent() != null) {
      ((ViewGroup)a.getParent()).removeView(a);
    }
    a.b.set(true);
    IMWebView.o(a);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.IMWebView.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */