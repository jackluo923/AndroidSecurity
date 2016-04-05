package com.millennialmedia.android;

import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

final class HttpRedirection
{
  private static final String HEADER_LOCATION = "Location";
  private static final String HTTPS = "https";
  private static final String LOG_URL_FORMAT = "Redirecting to: %s";
  private static final String METHOD_GET = "GET";
  
  static final String navigateRedirects(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    HttpURLConnection.setFollowRedirects(false);
    String str1;
    String str2;
    String str3;
    String str4;
    for (;;)
    {
      str1 = paramString;
      str2 = paramString;
      str3 = paramString;
      str4 = paramString;
      try
      {
        if (paramString.startsWith("https")) {
          break label262;
        }
        str1 = paramString;
        str2 = paramString;
        str3 = paramString;
        str4 = paramString;
        URL localURL = new URL(paramString);
        str1 = paramString;
        str2 = paramString;
        str3 = paramString;
        str4 = paramString;
        localObject = (HttpURLConnection)localURL.openConnection();
        str1 = paramString;
        str2 = paramString;
        str3 = paramString;
        str4 = paramString;
        ((HttpURLConnection)localObject).setConnectTimeout(3000);
        str1 = paramString;
        str2 = paramString;
        str3 = paramString;
        str4 = paramString;
        ((HttpURLConnection)localObject).setRequestMethod("GET");
        str1 = paramString;
        str2 = paramString;
        str3 = paramString;
        str4 = paramString;
        ((HttpURLConnection)localObject).connect();
        str1 = paramString;
        str2 = paramString;
        str3 = paramString;
        str4 = paramString;
        int i = ((HttpURLConnection)localObject).getResponseCode();
        if ((i < 300) || (i >= 400)) {
          break label262;
        }
        str1 = paramString;
        str2 = paramString;
        str3 = paramString;
        str4 = paramString;
        localObject = ((HttpURLConnection)localObject).getHeaderField("Location");
        str1 = paramString;
        str2 = paramString;
        str3 = paramString;
        str4 = paramString;
        URI localURI = new URI((String)localObject);
        str1 = paramString;
        str2 = paramString;
        str3 = paramString;
        str4 = paramString;
        if (localURI.isAbsolute()) {
          break;
        }
        str1 = paramString;
        str2 = paramString;
        str3 = paramString;
        str4 = paramString;
        paramString = localURL.toURI().resolve(localURI).toString();
      }
      catch (MalformedURLException paramString)
      {
        for (;;)
        {
          Object localObject;
          return str1;
          if (localObject != null) {
            paramString = (String)localObject;
          }
        }
        return paramString;
      }
      catch (SocketTimeoutException paramString)
      {
        MMSDK.Log.d("Connection timeout.");
        return str2;
      }
      catch (URISyntaxException paramString)
      {
        MMSDK.Log.d("URI Syntax incorrect.");
        return str3;
      }
      catch (IOException paramString) {}
      str1 = paramString;
      str2 = paramString;
      str3 = paramString;
      str4 = paramString;
      MMSDK.Log.v("Redirecting to: %s", new Object[] { paramString });
    }
    label262:
    return str4;
  }
  
  static void startActivityFromUri(HttpRedirection.RedirectionListenerImpl paramRedirectionListenerImpl)
  {
    if ((paramRedirectionListenerImpl == null) || (url == null) || (weakContext == null)) {
      return;
    }
    Utils.ThreadUtils.execute(new HttpRedirection.1(new WeakReference(paramRedirectionListenerImpl)));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HttpRedirection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */