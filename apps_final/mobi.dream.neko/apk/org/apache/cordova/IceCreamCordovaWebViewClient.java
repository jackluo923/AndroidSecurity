package org.apache.cordova;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Build.VERSION;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.LOG;

@TargetApi(11)
public class IceCreamCordovaWebViewClient
  extends CordovaWebViewClient
{
  private static final String TAG = "IceCreamCordovaWebViewClient";
  
  public IceCreamCordovaWebViewClient(CordovaInterface paramCordovaInterface)
  {
    super(paramCordovaInterface);
  }
  
  public IceCreamCordovaWebViewClient(CordovaInterface paramCordovaInterface, CordovaWebView paramCordovaWebView)
  {
    super(paramCordovaInterface, paramCordovaWebView);
  }
  
  private static boolean needsSpecialsInAssetUrlFix(Uri paramUri)
  {
    if (CordovaResourceApi.getUriType(paramUri) != 1) {}
    do
    {
      return false;
      if ((paramUri.getQuery() != null) || (paramUri.getFragment() != null)) {
        return true;
      }
    } while (!paramUri.toString().contains("%"));
    switch (Build.VERSION.SDK_INT)
    {
    default: 
      return false;
    }
    return true;
  }
  
  public WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    paramWebView = null;
    try
    {
      if (((paramString.startsWith("http:")) || (paramString.startsWith("https:"))) && (!Config.isUrlWhiteListed(paramString)))
      {
        LOG.w("IceCreamCordovaWebViewClient", "URL blocked by whitelist: " + paramString);
        return new WebResourceResponse("text/plain", "UTF-8", null);
      }
      CordovaResourceApi localCordovaResourceApi = appView.getResourceApi();
      paramString = Uri.parse(paramString);
      Uri localUri = localCordovaResourceApi.remapUri(paramString);
      if ((!paramString.equals(localUri)) || (needsSpecialsInAssetUrlFix(paramString)))
      {
        paramWebView = localCordovaResourceApi.openForRead(localUri, true);
        paramWebView = new WebResourceResponse(mimeType, "UTF-8", inputStream);
        return paramWebView;
      }
    }
    catch (IOException paramWebView)
    {
      if (!(paramWebView instanceof FileNotFoundException)) {
        LOG.e("IceCreamCordovaWebViewClient", "Error occurred while loading a file (returning a 404).", paramWebView);
      }
      paramWebView = new WebResourceResponse("text/plain", "UTF-8", null);
    }
    return paramWebView;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.IceCreamCordovaWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */