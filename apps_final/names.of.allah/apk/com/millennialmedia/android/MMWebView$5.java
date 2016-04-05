package com.millennialmedia.android;

import android.graphics.Bitmap;

class MMWebView$5
  implements Runnable
{
  MMWebView$5(MMWebView paramMMWebView, MMAdImpl paramMMAdImpl) {}
  
  public void run()
  {
    try
    {
      this$0.buildDrawingCache();
      Bitmap localBitmap = this$0.getDrawingCache();
      if (localBitmap != null)
      {
        localBitmap = Bitmap.createBitmap(localBitmap);
        val$adImpl.prepareTransition(localBitmap);
      }
      this$0.destroyDrawingCache();
      notify();
    }
    catch (Exception localException)
    {
      for (;;)
      {
        MMSDK.Log.d(localException);
        notify();
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */