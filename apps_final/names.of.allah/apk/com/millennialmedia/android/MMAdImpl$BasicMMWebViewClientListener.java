package com.millennialmedia.android;

class MMAdImpl$BasicMMWebViewClientListener
  extends MMWebViewClient.MMWebViewClientListener
{
  MMAdImpl$BasicMMWebViewClientListener(MMAdImpl paramMMAdImpl) {}
  
  public void onPageFinished(String arg1)
  {
    this$0.setClickable(true);
    if ((this$0.controller != null) && (this$0.controller.webView != null)) {
      synchronized (this$0.controller.webView)
      {
        if (this$0.controller.webView.hasWindowFocus())
        {
          this$0.controller.webView.setMraidViewableVisible();
          return;
        }
        this$0.controller.webView.setMraidViewableHidden();
      }
    }
  }
  
  void onPageStarted(String paramString)
  {
    this$0.setClickable(false);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdImpl.BasicMMWebViewClientListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */