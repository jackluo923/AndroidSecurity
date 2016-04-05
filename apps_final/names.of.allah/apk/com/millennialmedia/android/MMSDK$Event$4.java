package com.millennialmedia.android;

final class MMSDK$Event$4
  implements Runnable
{
  MMSDK$Event$4(MMAdImpl paramMMAdImpl) {}
  
  public final void run()
  {
    if ((val$adImpl != null) && (val$adImpl.requestListener != null)) {}
    try
    {
      val$adImpl.requestListener.requestCompleted(val$adImpl.getCallingAd());
      return;
    }
    catch (Exception localException)
    {
      MMSDK.Log.w("Exception raised in your MMAdListener: ", new Object[] { localException });
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMSDK.Event.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */