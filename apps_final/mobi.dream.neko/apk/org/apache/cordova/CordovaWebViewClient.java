package org.apache.cordova;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.util.Log;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Hashtable;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.LOG;
import org.apache.cordova.api.PluginManager;
import org.json.JSONException;
import org.json.JSONObject;

public class CordovaWebViewClient
  extends WebViewClient
{
  private static final String CORDOVA_EXEC_URL_PREFIX = "http://cdv_exec/";
  private static final String TAG = "CordovaWebViewClient";
  CordovaWebView appView;
  private Hashtable<String, AuthenticationToken> authenticationTokens = new Hashtable();
  CordovaInterface cordova;
  private boolean doClearHistory = false;
  
  public CordovaWebViewClient(CordovaInterface paramCordovaInterface)
  {
    cordova = paramCordovaInterface;
  }
  
  public CordovaWebViewClient(CordovaInterface paramCordovaInterface, CordovaWebView paramCordovaWebView)
  {
    cordova = paramCordovaInterface;
    appView = paramCordovaWebView;
  }
  
  private void handleExecUrl(String paramString)
  {
    int i = "http://cdv_exec/".length();
    int j = paramString.indexOf('#', i + 1);
    int k = paramString.indexOf('#', j + 1);
    int m = paramString.indexOf('#', k + 1);
    if ((i == -1) || (j == -1) || (k == -1) || (m == -1))
    {
      Log.e("CordovaWebViewClient", "Could not decode URL command: " + paramString);
      return;
    }
    String str1 = paramString.substring(i, j);
    String str2 = paramString.substring(j + 1, k);
    String str3 = paramString.substring(k + 1, m);
    paramString = paramString.substring(m + 1);
    appView.pluginManager.exec(str1, str2, str3, paramString);
  }
  
  public void clearAuthenticationTokens()
  {
    authenticationTokens.clear();
  }
  
  public AuthenticationToken getAuthenticationToken(String paramString1, String paramString2)
  {
    AuthenticationToken localAuthenticationToken = (AuthenticationToken)authenticationTokens.get(paramString1.concat(paramString2));
    Object localObject = localAuthenticationToken;
    if (localAuthenticationToken == null)
    {
      localObject = (AuthenticationToken)authenticationTokens.get(paramString1);
      paramString1 = (String)localObject;
      if (localObject == null) {
        paramString1 = (AuthenticationToken)authenticationTokens.get(paramString2);
      }
      localObject = paramString1;
      if (paramString1 == null) {
        localObject = (AuthenticationToken)authenticationTokens.get("");
      }
    }
    return (AuthenticationToken)localObject;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    LOG.d("CordovaWebViewClient", "onPageFinished(" + paramString + ")");
    if (doClearHistory)
    {
      paramWebView.clearHistory();
      doClearHistory = false;
    }
    paramWebView = appView;
    loadUrlTimeout += 1;
    appView.postMessage("onPageFinished", paramString);
    if (appView.getVisibility() == 4) {
      new Thread(new Runnable()
      {
        public void run()
        {
          try
          {
            Thread.sleep(2000L);
            cordova.getActivity().runOnUiThread(new Runnable()
            {
              public void run()
              {
                appView.postMessage("spinner", "stop");
              }
            });
            return;
          }
          catch (InterruptedException localInterruptedException) {}
        }
      }).start();
    }
    if (paramString.equals("about:blank")) {
      appView.postMessage("exit", null);
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    appView.jsMessageQueue.reset();
    appView.postMessage("onPageStarted", paramString);
    if (appView.pluginManager != null) {
      appView.pluginManager.onReset();
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    LOG.d("CordovaWebViewClient", "CordovaWebViewClient.onReceivedError: Error code=%s Description=%s URL=%s", new Object[] { Integer.valueOf(paramInt), paramString1, paramString2 });
    paramWebView = appView;
    loadUrlTimeout += 1;
    paramWebView = new JSONObject();
    try
    {
      paramWebView.put("errorCode", paramInt);
      paramWebView.put("description", paramString1);
      paramWebView.put("url", paramString2);
      appView.postMessage("onReceivedError", paramWebView);
      return;
    }
    catch (JSONException paramString1)
    {
      for (;;)
      {
        paramString1.printStackTrace();
      }
    }
  }
  
  public void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    AuthenticationToken localAuthenticationToken = getAuthenticationToken(paramString1, paramString2);
    if (localAuthenticationToken != null)
    {
      paramHttpAuthHandler.proceed(localAuthenticationToken.getUserName(), localAuthenticationToken.getPassword());
      return;
    }
    super.onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2);
  }
  
  @TargetApi(8)
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    String str = cordova.getActivity().getPackageName();
    PackageManager localPackageManager = cordova.getActivity().getPackageManager();
    try
    {
      if ((getApplicationInfo128flags & 0x2) != 0)
      {
        paramSslErrorHandler.proceed();
        return;
      }
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    }
  }
  
  public AuthenticationToken removeAuthenticationToken(String paramString1, String paramString2)
  {
    return (AuthenticationToken)authenticationTokens.remove(paramString1.concat(paramString2));
  }
  
  public void setAuthenticationToken(AuthenticationToken paramAuthenticationToken, String paramString1, String paramString2)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = "";
    }
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    authenticationTokens.put(str.concat(paramString1), paramAuthenticationToken);
  }
  
  public void setWebView(CordovaWebView paramCordovaWebView)
  {
    appView = paramCordovaWebView;
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if ((appView.pluginManager != null) && (appView.pluginManager.onOverrideUrlLoading(paramString))) {}
    for (;;)
    {
      return true;
      if (paramString.startsWith("tel:"))
      {
        try
        {
          paramWebView = new Intent("android.intent.action.DIAL");
          paramWebView.setData(Uri.parse(paramString));
          cordova.getActivity().startActivity(paramWebView);
        }
        catch (ActivityNotFoundException paramWebView)
        {
          LOG.e("CordovaWebViewClient", "Error dialing " + paramString + ": " + paramWebView.toString());
        }
      }
      else if (paramString.startsWith("geo:"))
      {
        try
        {
          paramWebView = new Intent("android.intent.action.VIEW");
          paramWebView.setData(Uri.parse(paramString));
          cordova.getActivity().startActivity(paramWebView);
        }
        catch (ActivityNotFoundException paramWebView)
        {
          LOG.e("CordovaWebViewClient", "Error showing map " + paramString + ": " + paramWebView.toString());
        }
      }
      else if (paramString.startsWith("mailto:"))
      {
        try
        {
          paramWebView = new Intent("android.intent.action.VIEW");
          paramWebView.setData(Uri.parse(paramString));
          cordova.getActivity().startActivity(paramWebView);
        }
        catch (ActivityNotFoundException paramWebView)
        {
          LOG.e("CordovaWebViewClient", "Error sending email " + paramString + ": " + paramWebView.toString());
        }
      }
      else
      {
        if (paramString.startsWith("sms:")) {
          for (;;)
          {
            Intent localIntent;
            int i;
            try
            {
              localIntent = new Intent("android.intent.action.VIEW");
              i = paramString.indexOf('?');
              if (i != -1) {
                break label439;
              }
              paramWebView = paramString.substring(4);
              localIntent.setData(Uri.parse("sms:" + paramWebView));
              localIntent.putExtra("address", paramWebView);
              localIntent.setType("vnd.android-dir/mms-sms");
              cordova.getActivity().startActivity(localIntent);
            }
            catch (ActivityNotFoundException paramWebView)
            {
              LOG.e("CordovaWebViewClient", "Error sending sms " + paramString + ":" + paramWebView.toString());
            }
            break;
            label439:
            String str1 = paramString.substring(4, i);
            String str2 = Uri.parse(paramString).getQuery();
            paramWebView = str1;
            if (str2 != null)
            {
              paramWebView = str1;
              if (str2.startsWith("body="))
              {
                localIntent.putExtra("sms_body", str2.substring(5));
                paramWebView = str1;
              }
            }
          }
        }
        if (paramString.startsWith("market:"))
        {
          try
          {
            paramWebView = new Intent("android.intent.action.VIEW");
            paramWebView.setData(Uri.parse(paramString));
            cordova.getActivity().startActivity(paramWebView);
          }
          catch (ActivityNotFoundException paramWebView)
          {
            LOG.e("CordovaWebViewClient", "Error loading Google Play Store: " + paramString, paramWebView);
          }
        }
        else
        {
          if ((paramString.startsWith("file://")) || (paramString.startsWith("data:")) || (Config.isUrlWhiteListed(paramString))) {
            return false;
          }
          try
          {
            paramWebView = new Intent("android.intent.action.VIEW");
            paramWebView.setData(Uri.parse(paramString));
            cordova.getActivity().startActivity(paramWebView);
          }
          catch (ActivityNotFoundException paramWebView)
          {
            LOG.e("CordovaWebViewClient", "Error loading url " + paramString, paramWebView);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */