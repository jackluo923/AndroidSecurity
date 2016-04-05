package com.admob.android.ads;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

class Ad$1
  extends Thread
{
  final Ad this$0;
  
  Ad$1(Ad paramAd) {}
  
  public void run()
  {
    int m = 3;
    localObject1 = null;
    try
    {
      Object localObject4 = this$0;
      localObject4 = Ad.access$000((Ad)localObject4);
      if (localObject4 != null)
      {
        localObject4 = this$0;
        localObject4 = Ad.access$000((Ad)localObject4);
        ((Ad.NetworkListener)localObject4).onNetworkActivityStart();
      }
      URL localURL = new java/net/URL;
      localObject4 = this$0;
      localObject4 = Ad.access$100((Ad)localObject4);
      localURL.<init>((String)localObject4);
      localObject1 = localURL;
      boolean bool1 = true;
      HttpURLConnection.setFollowRedirects(bool1);
      Object localObject3 = localURL.openConnection();
      localObject3 = (HttpURLConnection)localObject3;
      int i = Ad.access$200();
      ((HttpURLConnection)localObject3).setConnectTimeout(i);
      i = Ad.access$200();
      ((HttpURLConnection)localObject3).setReadTimeout(i);
      String str1 = "User-Agent";
      Object localObject6 = AdManager.getUserAgent();
      ((HttpURLConnection)localObject3).setRequestProperty(str1, (String)localObject6);
      str1 = "X-ADMOB-ISU";
      localObject6 = this$0;
      localObject6 = Ad.access$300((Ad)localObject6);
      localObject6 = AdManager.getUserId((Context)localObject6);
      ((HttpURLConnection)localObject3).setRequestProperty(str1, (String)localObject6);
      ((HttpURLConnection)localObject3).connect();
      ((HttpURLConnection)localObject3).getResponseCode();
      localObject1 = ((HttpURLConnection)localObject3).getURL();
      str1 = "AdMob SDK";
      int k = 3;
      boolean bool2 = Log.isLoggable(str1, k);
      if (bool2)
      {
        str2 = "AdMob SDK";
        localObject7 = new java/lang/StringBuilder;
        ((StringBuilder)localObject7).<init>();
        localObject8 = "Final click destination URL:  ";
        localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
        localObject7 = ((StringBuilder)localObject7).append(localObject1);
        localObject7 = ((StringBuilder)localObject7).toString();
        Log.d(str2, (String)localObject7);
      }
    }
    catch (MalformedURLException localMalformedURLException)
    {
      for (;;)
      {
        String str2;
        boolean bool3;
        String str3;
        Intent localIntent;
        int j;
        localObject2 = localMalformedURLException;
        str4 = "AdMob SDK";
        localObject7 = new java/lang/StringBuilder;
        ((StringBuilder)localObject7).<init>();
        localObject8 = "Malformed click URL.  Will try to follow anyway.  ";
        localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
        localObject8 = this$0;
        localObject8 = Ad.access$100((Ad)localObject8);
        localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
        localObject7 = ((StringBuilder)localObject7).toString();
        Log.w(str4, (String)localObject7, (Throwable)localObject2);
      }
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localObject2 = localIOException;
        str5 = "AdMob SDK";
        localObject7 = new java/lang/StringBuilder;
        ((StringBuilder)localObject7).<init>();
        localObject8 = "Could not determine final click destination URL.  Will try to follow anyway.  ";
        localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
        localObject8 = this$0;
        localObject8 = Ad.access$100((Ad)localObject8);
        localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
        localObject7 = ((StringBuilder)localObject7).toString();
        Log.w(str5, (String)localObject7, (Throwable)localObject2);
      }
    }
    if (localObject1 != null)
    {
      str2 = "AdMob SDK";
      bool3 = Log.isLoggable(str2, m);
      if (bool3)
      {
        str3 = "AdMob SDK";
        localObject7 = new java/lang/StringBuilder;
        ((StringBuilder)localObject7).<init>();
        localObject8 = "Opening ";
        localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
        localObject7 = ((StringBuilder)localObject7).append(localObject1);
        localObject7 = ((StringBuilder)localObject7).toString();
        Log.d(str3, (String)localObject7);
      }
      localIntent = new android/content/Intent;
      str3 = "android.intent.action.VIEW";
      localObject7 = ((URL)localObject1).toString();
      localObject7 = Uri.parse((String)localObject7);
      localIntent.<init>(str3, (Uri)localObject7);
      j = 268435456;
      localIntent.addFlags(j);
    }
    try
    {
      localObject5 = this$0;
      localObject5 = Ad.access$300((Ad)localObject5);
      ((Context)localObject5).startActivity(localIntent);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject5;
        String str4;
        String str5;
        Object localObject2 = localException;
        String str6 = "AdMob SDK";
        localObject7 = new java/lang/StringBuilder;
        ((StringBuilder)localObject7).<init>();
        localObject8 = "Could not open browser on ad click to ";
        localObject7 = ((StringBuilder)localObject7).append((String)localObject8);
        localObject7 = ((StringBuilder)localObject7).append(localObject1);
        localObject7 = ((StringBuilder)localObject7).toString();
        Log.e(str6, (String)localObject7, (Throwable)localObject2);
      }
    }
    localObject5 = this$0;
    localObject5 = Ad.access$000((Ad)localObject5);
    if (localObject5 != null)
    {
      localObject5 = this$0;
      localObject5 = Ad.access$000((Ad)localObject5);
      ((Ad.NetworkListener)localObject5).onNetworkActivityEnd();
    }
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.Ad.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */