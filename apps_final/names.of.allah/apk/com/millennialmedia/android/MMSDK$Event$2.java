package com.millennialmedia.android;

final class MMSDK$Event$2
  implements Runnable
{
  MMSDK$Event$2(MMAdImpl paramMMAdImpl) {}
  
  public final void run()
  {
    if ((val$adImpl != null) && (val$adImpl.requestListener != null)) {}
    try
    {
      val$adImpl.requestListener.MMAdRequestIsCaching(val$adImpl.getCallingAd());
      return;
    }
    catch (Exception localException)
    {
      MMSDK.Log.w("Exception raised in your MMAdListener: ", new Object[] { localException });
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMSDK.Event.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */