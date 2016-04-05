package com.inmobi.re.container;

import com.inmobi.commons.internal.Log;

class IMWebView$a
  implements Runnable
{
  IMWebView$a(IMWebView paramIMWebView) {}
  
  public void run()
  {
    try
    {
      a.injectJavaScript("window.mraid.broadcastEvent('vibrateComplete')");
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "Exception giviing vibration complete callback", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.IMWebView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */