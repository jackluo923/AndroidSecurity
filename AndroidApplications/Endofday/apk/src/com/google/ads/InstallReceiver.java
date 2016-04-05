package com.google.ads;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Set;
import t;
import u;

public class InstallReceiver
  extends BroadcastReceiver
{
  private static String a(String paramString1, String paramString2, String paramString3)
  {
    Object localObject7 = null;
    int i = 0;
    Object localObject4;
    Object localObject5;
    label199:
    Object localObject3;
    if (paramString1 != null) {
      try
      {
        Object localObject1 = "&";
        localObject1 = paramString1.split((String)localObject1);
        localObject4 = localObject7;
        int j = localObject1.length;
        if (i < j)
        {
          localObject5 = localObject1[i];
          String str1 = "admob_";
          boolean bool = ((String)localObject5).startsWith(str1);
          Object localObject6;
          if (bool)
          {
            String str2 = "admob_";
            int k = str2.length();
            localObject5 = ((String)localObject5).substring(k);
            String str3 = "=";
            localObject5 = ((String)localObject5).split(str3);
            int m = 0;
            localObject6 = localObject5[m];
            String str4 = "UTF-8";
            localObject6 = URLEncoder.encode((String)localObject6, str4);
            int n = 1;
            localObject5 = localObject5[n];
            String str5 = "UTF-8";
            localObject5 = URLEncoder.encode((String)localObject5, str5);
            if (localObject4 != null) {
              break label199;
            }
            localObject4 = new java/lang/StringBuilder;
            int i1 = 128;
            ((StringBuilder)localObject4).<init>(i1);
          }
          for (;;)
          {
            localObject6 = ((StringBuilder)localObject4).append((String)localObject6);
            String str6 = "=";
            localObject6 = ((StringBuilder)localObject6).append(str6);
            ((StringBuilder)localObject6).append((String)localObject5);
            i += 1;
            break;
            str6 = "&";
            ((StringBuilder)localObject4).append(str6);
          }
          localObject2 = localObject7;
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        localObject3 = "Could not create install URL.  Install not tracked.";
        t.a((String)localObject3, localUnsupportedEncodingException);
      }
    }
    for (;;)
    {
      Object localObject2;
      return (String)localObject2;
      if (localObject4 != null)
      {
        localObject2 = "UTF-8";
        localObject2 = URLEncoder.encode(paramString2, (String)localObject2);
        localObject3 = "&";
        localObject3 = ((StringBuilder)localObject4).append((String)localObject3);
        localObject5 = "isu";
        localObject3 = ((StringBuilder)localObject3).append((String)localObject5);
        localObject5 = "=";
        localObject3 = ((StringBuilder)localObject3).append((String)localObject5);
        ((StringBuilder)localObject3).append((String)localObject2);
        localObject2 = "UTF-8";
        localObject2 = URLEncoder.encode(paramString3, (String)localObject2);
        localObject3 = "&";
        localObject3 = ((StringBuilder)localObject4).append((String)localObject3);
        localObject5 = "app_id";
        localObject3 = ((StringBuilder)localObject3).append((String)localObject5);
        localObject5 = "=";
        localObject3 = ((StringBuilder)localObject3).append((String)localObject5);
        ((StringBuilder)localObject3).append((String)localObject2);
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        localObject3 = "http://a.admob.com/f0?";
        localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
        localObject3 = ((StringBuilder)localObject4).toString();
        localObject2 = ((StringBuilder)localObject2).append((String)localObject3);
        localObject2 = ((StringBuilder)localObject2).toString();
      }
    }
  }
  
  private static void a(Context paramContext, Intent paramIntent)
  {
    Object localObject5;
    try
    {
      Object localObject1 = paramContext.getPackageManager();
      if (localObject1 != null)
      {
        localObject5 = new android/content/ComponentName;
        Class localClass = InstallReceiver.class;
        ((ComponentName)localObject5).<init>(paramContext, localClass);
        int i = 128;
        localObject5 = ((PackageManager)localObject1).getReceiverInfo((ComponentName)localObject5, i);
        if (localObject5 != null)
        {
          localObject1 = metaData;
          if (localObject1 != null)
          {
            localObject1 = metaData;
            localObject1 = ((Bundle)localObject1).keySet();
            if (localObject1 != null)
            {
              Iterator localIterator = ((Set)localObject1).iterator();
              for (;;)
              {
                boolean bool1 = localIterator.hasNext();
                if (!bool1) {
                  break;
                }
                Object localObject2 = localIterator.next();
                localObject2 = (String)localObject2;
                Object localObject6 = null;
                try
                {
                  localObject7 = metaData;
                  localObject6 = ((Bundle)localObject7).getString((String)localObject2);
                  localObject2 = "com.google.android.apps.analytics.AnalyticsReceiver";
                  boolean bool2 = ((String)localObject6).equals(localObject2);
                  if (!bool2)
                  {
                    Object localObject3 = Class.forName((String)localObject6);
                    localObject3 = ((Class)localObject3).newInstance();
                    localObject3 = (BroadcastReceiver)localObject3;
                    ((BroadcastReceiver)localObject3).onReceive(paramContext, paramIntent);
                    localObject3 = new java/lang/StringBuilder;
                    ((StringBuilder)localObject3).<init>();
                    localObject7 = "Successfully forwarded install notification to ";
                    localObject3 = ((StringBuilder)localObject3).append((String)localObject7);
                    localObject3 = ((StringBuilder)localObject3).append((String)localObject6);
                    localObject3 = ((StringBuilder)localObject3).toString();
                    t.a((String)localObject3);
                  }
                }
                catch (Exception localException1)
                {
                  Object localObject7 = new java/lang/StringBuilder;
                  ((StringBuilder)localObject7).<init>();
                  String str2 = "Could not forward Market's INSTALL_REFERRER intent to ";
                  localObject7 = ((StringBuilder)localObject7).append(str2);
                  localObject6 = ((StringBuilder)localObject7).append((String)localObject6);
                  localObject6 = ((StringBuilder)localObject6).toString();
                  t.b((String)localObject6, localException1);
                }
              }
              return;
            }
          }
        }
      }
    }
    catch (Exception localException2)
    {
      localObject5 = "Unhandled exception while forwarding install intents. Possibly lost some install information.";
      t.b((String)localObject5, localException2);
    }
    for (;;)
    {
      try
      {
        Object localObject4 = "com.google.android.apps.analytics.AnalyticsReceiver";
        localObject4 = Class.forName((String)localObject4);
        localObject4 = ((Class)localObject4).newInstance();
        localObject4 = (BroadcastReceiver)localObject4;
        ((BroadcastReceiver)localObject4).onReceive(paramContext, paramIntent);
        localObject4 = "Successfully forwarded install notification to com.google.android.apps.analytics.AnalyticsReceiver";
        t.a((String)localObject4);
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        String str1 = "Google Analytics not installed.";
        t.d(str1);
      }
      catch (Exception localException3)
      {
        localObject5 = "Exception from the Google Analytics install receiver.";
        t.b((String)localObject5, localException3);
      }
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      String str1 = "referrer";
      str1 = paramIntent.getStringExtra(str1);
      str2 = u.a(paramContext);
      Object localObject1 = paramContext.getPackageName();
      str1 = a(str1, str2, (String)localObject1);
      if (str1 != null)
      {
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        localObject2 = "Processing install from an AdMob ad (";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject1 = ((StringBuilder)localObject1).append(str1);
        localObject2 = ").";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject1 = ((StringBuilder)localObject1).toString();
        t.d((String)localObject1);
      }
      localObject1 = new android/webkit/WebView;
      ((WebView)localObject1).<init>(paramContext);
      localObject1 = ((WebView)localObject1).getSettings();
      localObject1 = ((WebSettings)localObject1).getUserAgentString();
      Object localObject2 = new java/net/URL;
      ((URL)localObject2).<init>(str1);
      this = ((URL)localObject2).openConnection();
      this = (HttpURLConnection)this;
      str1 = "User-Agent";
      setRequestProperty(str1, (String)localObject1);
      str1 = "X-Admob-Isu";
      setRequestProperty(str1, str2);
      getResponseCode();
      a(paramContext, paramIntent);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String str2 = "Unhandled exception processing Market install.";
        t.a(str2, localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.ads.InstallReceiver
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */