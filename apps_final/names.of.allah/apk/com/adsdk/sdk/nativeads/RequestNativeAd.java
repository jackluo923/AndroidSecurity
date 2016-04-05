package com.adsdk.sdk.nativeads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.adsdk.sdk.Log;
import com.adsdk.sdk.RequestException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class RequestNativeAd
{
  private Bitmap loadBitmap(String paramString)
  {
    try
    {
      paramString = BitmapFactory.decodeStream(new URL(paramString).openStream());
      return paramString;
    }
    catch (Exception paramString)
    {
      Log.e("Decoding bitmap failed!");
    }
    return null;
  }
  
  protected NativeAd parse(InputStream paramInputStream)
  {
    NativeAd localNativeAd = new NativeAd();
    Object localObject1;
    Object localObject2;
    label86:
    int i;
    try
    {
      paramInputStream = new BufferedReader(new InputStreamReader(paramInputStream, "UTF-8"), 8);
      localObject1 = new StringBuilder();
      localObject2 = paramInputStream.readLine();
      if (localObject2 != null) {
        break label149;
      }
      paramInputStream = new JSONObject(((StringBuilder)localObject1).toString());
      localObject1 = paramInputStream.optJSONObject("imageassets");
      if (localObject1 == null) {
        break label86;
      }
      localObject2 = ((JSONObject)localObject1).keys();
    }
    catch (UnsupportedEncodingException paramInputStream)
    {
      for (;;)
      {
        throw new RequestException("Cannot parse Response", paramInputStream);
        localObject3 = new NativeAd.ImageAsset();
        str1 = (String)((Iterator)localObject2).next();
        localJSONObject = ((JSONObject)localObject1).getJSONObject(str1);
        str2 = localJSONObject.getString("url");
        url = str2;
        bitmap = loadBitmap(str2);
        width = localJSONObject.getInt("width");
        height = localJSONObject.getInt("height");
        localNativeAd.addImageAsset(str1, (NativeAd.ImageAsset)localObject3);
      }
    }
    catch (IOException paramInputStream)
    {
      for (;;)
      {
        throw new RequestException("Cannot parse Response", paramInputStream);
        localObject3 = (String)((Iterator)localObject2).next();
        localNativeAd.addTextAsset((String)localObject3, ((JSONObject)localObject1).getString((String)localObject3));
      }
    }
    catch (JSONException paramInputStream)
    {
      throw new RequestException("Cannot parse Response", paramInputStream);
    }
    if (!((Iterator)localObject2).hasNext())
    {
      localObject1 = paramInputStream.optJSONObject("textassets");
      if (localObject1 != null)
      {
        localObject2 = ((JSONObject)localObject1).keys();
        if (((Iterator)localObject2).hasNext()) {
          break label292;
        }
      }
      localNativeAd.setClickUrl(paramInputStream.optString("click_url", null));
      paramInputStream = paramInputStream.optJSONArray("trackers");
      if (paramInputStream == null) {
        return localNativeAd;
      }
      i = 0;
    }
    for (;;)
    {
      if (i >= paramInputStream.length())
      {
        return localNativeAd;
        label149:
        ((StringBuilder)localObject1).append(localObject2 + "\n");
        break;
      }
      Object localObject3;
      String str1;
      JSONObject localJSONObject;
      String str2;
      label292:
      localObject1 = paramInputStream.optJSONObject(i);
      if (localObject1 != null)
      {
        localObject2 = new NativeAd.Tracker();
        type = ((JSONObject)localObject1).getString("type");
        url = ((JSONObject)localObject1).getString("url");
        localNativeAd.getTrackers().add(localObject2);
      }
      i += 1;
    }
    return localNativeAd;
  }
  
  public NativeAd sendRequest(NativeAdRequest paramNativeAdRequest)
  {
    String str = paramNativeAdRequest.toString();
    Log.d("Ad RequestPerform HTTP Get Url: " + str);
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    HttpConnectionParams.setSoTimeout(localDefaultHttpClient.getParams(), 10000);
    HttpConnectionParams.setConnectionTimeout(localDefaultHttpClient.getParams(), 10000);
    HttpProtocolParams.setUserAgent(localDefaultHttpClient.getParams(), paramNativeAdRequest.getUserAgent());
    paramNativeAdRequest = new HttpGet(str);
    paramNativeAdRequest.setHeader("User-Agent", System.getProperty("http.agent"));
    try
    {
      paramNativeAdRequest = localDefaultHttpClient.execute(paramNativeAdRequest);
      int i = paramNativeAdRequest.getStatusLine().getStatusCode();
      if (i == 200) {
        return parse(paramNativeAdRequest.getEntity().getContent());
      }
      throw new RequestException("Server Error. Response code:" + i);
    }
    catch (RequestException paramNativeAdRequest)
    {
      throw paramNativeAdRequest;
    }
    catch (ClientProtocolException paramNativeAdRequest)
    {
      throw new RequestException("Error in HTTP request", paramNativeAdRequest);
    }
    catch (IOException paramNativeAdRequest)
    {
      throw new RequestException("Error in HTTP request", paramNativeAdRequest);
    }
    catch (Throwable paramNativeAdRequest)
    {
      throw new RequestException("Error in HTTP request", paramNativeAdRequest);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.RequestNativeAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */