package com.millennialmedia.android;

final class MMSDK$Event$1
  implements Runnable
{
  MMSDK$Event$1(String paramString) {}
  
  public final void run()
  {
    HttpGetRequest localHttpGetRequest = new HttpGetRequest();
    try
    {
      localHttpGetRequest.get(val$logString);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMSDK.Event.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */