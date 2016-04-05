package com.millennialmedia.android;

class MMWebView$4
  implements Runnable
{
  MMWebView$4(MMWebView paramMMWebView, String paramString1, String paramString2) {}
  
  public void run()
  {
    if (sharedHandShakethis$0.getContext()).hardwareAccelerationEnabled) {
      this$0.enableHardwareAcceleration();
    }
    for (;;)
    {
      this$0.loadDataWithBaseURL(val$finalBaseUrl, val$finalContent, "text/html", "UTF-8", null);
      return;
      this$0.disableAllAcceleration();
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */