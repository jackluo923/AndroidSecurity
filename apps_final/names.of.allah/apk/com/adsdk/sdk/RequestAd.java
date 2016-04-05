package com.adsdk.sdk;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

public abstract class RequestAd<T>
{
  InputStream is;
  
  abstract T parse(InputStream paramInputStream, boolean paramBoolean);
  
  abstract T parseTestString();
  
  public T sendRequest(AdRequest paramAdRequest)
  {
    if (is == null)
    {
      Log.d("Parse Real");
      Object localObject2 = paramAdRequest.toString();
      Log.d("Ad RequestPerform HTTP Get Url: " + (String)localObject2);
      Object localObject1 = new DefaultHttpClient();
      HttpConnectionParams.setSoTimeout(((DefaultHttpClient)localObject1).getParams(), 10000);
      HttpConnectionParams.setConnectionTimeout(((DefaultHttpClient)localObject1).getParams(), 10000);
      HttpProtocolParams.setUserAgent(((DefaultHttpClient)localObject1).getParams(), paramAdRequest.getUserAgent());
      localObject2 = new HttpGet((String)localObject2);
      ((HttpGet)localObject2).setHeader("User-Agent", System.getProperty("http.agent"));
      try
      {
        localObject1 = ((DefaultHttpClient)localObject1).execute((HttpUriRequest)localObject2);
        int i = ((HttpResponse)localObject1).getStatusLine().getStatusCode();
        if (i == 200) {
          return (T)parse(((HttpResponse)localObject1).getEntity().getContent(), paramAdRequest.isVideoRequest());
        }
        throw new RequestException("Server Error. Response code:" + i);
      }
      catch (RequestException paramAdRequest)
      {
        throw paramAdRequest;
      }
      catch (ClientProtocolException paramAdRequest)
      {
        throw new RequestException("Error in HTTP request", paramAdRequest);
      }
      catch (IOException paramAdRequest)
      {
        throw new RequestException("Error in HTTP request", paramAdRequest);
      }
      catch (Throwable paramAdRequest)
      {
        throw new RequestException("Error in HTTP request", paramAdRequest);
      }
    }
    Log.d("Parse Injected");
    return (T)parseTestString();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.RequestAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */