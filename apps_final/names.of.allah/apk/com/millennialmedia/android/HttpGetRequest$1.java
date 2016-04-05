package com.millennialmedia.android;

final class HttpGetRequest$1
  implements Runnable
{
  HttpGetRequest$1(String[] paramArrayOfString) {}
  
  public final void run()
  {
    String[] arrayOfString = val$urls;
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        String str = arrayOfString[i];
        MMSDK.Log.v("Logging event to: %s", new Object[] { str });
        try
        {
          new HttpGetRequest().get(str);
          i += 1;
        }
        catch (Exception localException)
        {
          for (;;)
          {
            MMSDK.Log.v(localException.getMessage());
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HttpGetRequest.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */