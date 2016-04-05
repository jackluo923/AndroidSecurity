package com.millennialmedia.android;

class MMWebView$3
  implements Runnable
{
  MMWebView$3(MMWebView paramMMWebView, MMAdImpl paramMMAdImpl, String paramString1, String paramString2) {}
  
  public void run()
  {
    if (sharedHandShakethis$0.getContext()).hardwareAccelerationEnabled) {
      this$0.enableHardwareAcceleration();
    }
    for (;;)
    {
      MMAd localMMAd = val$adImpl.getCallingAd();
      if ((localMMAd != null) && ((localMMAd instanceof MMLayout))) {
        ((MMLayout)localMMAd).removeVideo();
      }
      this$0.loadDataWithBaseURL(val$baseUrl, val$finalContent, "text/html", "UTF-8", null);
      return;
      this$0.disableAllAcceleration();
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */