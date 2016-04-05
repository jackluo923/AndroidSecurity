package com.adsdk.sdk.nativeads;

import android.os.AsyncTask;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

class NativeAdView$2
  extends AsyncTask<Void, Void, Void>
{
  NativeAdView$2(NativeAdView paramNativeAdView, String paramString) {}
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    try
    {
      paramVarArgs = new DefaultHttpClient();
      HttpGet localHttpGet = new HttpGet();
      localHttpGet.setHeader("User-Agent", System.getProperty("http.agent"));
      localHttpGet.setURI(new URI(val$url));
      paramVarArgs.execute(localHttpGet);
      return null;
    }
    catch (URISyntaxException paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
    catch (ClientProtocolException paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
    catch (IOException paramVarArgs)
    {
      for (;;)
      {
        paramVarArgs.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.NativeAdView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */