package com.adsdk.sdk.banner;

import android.os.AsyncTask;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

class BannerAdView$3
  extends AsyncTask<Void, Void, Void>
{
  BannerAdView$3(BannerAdView paramBannerAdView, String paramString) {}
  
  protected Void doInBackground(Void... paramVarArgs)
  {
    if (val$clickUrl.startsWith("market")) {
      return null;
    }
    try
    {
      paramVarArgs = new DefaultHttpClient();
      HttpGet localHttpGet = new HttpGet();
      localHttpGet.setHeader("User-Agent", System.getProperty("http.agent"));
      localHttpGet.setURI(new URI(val$clickUrl));
      paramVarArgs.execute(localHttpGet);
      return null;
    }
    catch (URISyntaxException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
      return null;
    }
    catch (ClientProtocolException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
      return null;
    }
    catch (IOException paramVarArgs)
    {
      paramVarArgs.printStackTrace();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.BannerAdView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */