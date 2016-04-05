package com.millennialmedia.android;

import java.io.IOException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

final class Utils$HttpUtils$1
  implements Runnable
{
  Utils$HttpUtils$1(String paramString) {}
  
  public final void run()
  {
    try
    {
      new DefaultHttpClient().execute(new HttpGet(val$url));
      MMSDK.Log.d("Executed Url :\"" + val$url + "\"");
      return;
    }
    catch (IOException localIOException)
    {
      MMSDK.Log.e(localIOException);
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.Utils.HttpUtils.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */