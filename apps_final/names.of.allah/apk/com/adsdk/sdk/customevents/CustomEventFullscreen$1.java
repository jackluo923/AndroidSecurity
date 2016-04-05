package com.adsdk.sdk.customevents;

import android.os.AsyncTask;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

class CustomEventFullscreen$1
  extends AsyncTask<Void, Void, Void>
{
  CustomEventFullscreen$1(CustomEventFullscreen paramCustomEventFullscreen) {}
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    try
    {
      DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
      HttpGet localHttpGet = new HttpGet();
      localHttpGet.setHeader("User-Agent", System.getProperty("http.agent"));
      if ((this$0.trackingPixel.startsWith("http://")) || (this$0.trackingPixel.startsWith("https://"))) {}
      for (paramVarArgs = this$0.trackingPixel;; paramVarArgs = "http://" + this$0.trackingPixel)
      {
        localHttpGet.setURI(new URI(paramVarArgs));
        localDefaultHttpClient.execute(localHttpGet);
        break;
      }
      return null;
    }
    catch (URISyntaxException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
    }
    catch (ClientProtocolException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
    }
    catch (IOException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.customevents.CustomEventFullscreen.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */