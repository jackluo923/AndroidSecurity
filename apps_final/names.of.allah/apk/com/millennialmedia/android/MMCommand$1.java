package com.millennialmedia.android;

import java.lang.reflect.Method;

class MMCommand$1
  implements Runnable
{
  MMCommand$1(MMCommand paramMMCommand, MMWebView paramMMWebView, String paramString) {}
  
  public void run()
  {
    if (MMCommand.access$000(this$0).getName().equals("expandWithProperties")) {
      val$webViewCallback.isExpanding = true;
    }
    val$webViewCallback.loadUrl(val$call);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMCommand.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */