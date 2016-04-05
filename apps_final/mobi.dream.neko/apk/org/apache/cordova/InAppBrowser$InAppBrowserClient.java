package org.apache.cordova;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.LOG;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONException;
import org.json.JSONObject;

public class InAppBrowser$InAppBrowserClient
  extends WebViewClient
{
  EditText edittext;
  CordovaWebView webView;
  
  public InAppBrowser$InAppBrowserClient(InAppBrowser paramInAppBrowser, CordovaWebView paramCordovaWebView, EditText paramEditText)
  {
    webView = paramCordovaWebView;
    edittext = paramEditText;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    try
    {
      paramWebView = new JSONObject();
      paramWebView.put("type", "loadstop");
      paramWebView.put("url", paramString);
      InAppBrowser.access$1100(this$0, paramWebView, true);
      return;
    }
    catch (JSONException paramWebView)
    {
      Log.d("InAppBrowser", "Should never happen");
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    paramBitmap = "";
    if ((paramString.startsWith("http:")) || (paramString.startsWith("https:")) || (paramString.startsWith("file:"))) {
      paramWebView = paramString;
    }
    for (;;)
    {
      if (!paramWebView.equals(edittext.getText().toString())) {
        edittext.setText(paramWebView);
      }
      try
      {
        paramString = new JSONObject();
        paramString.put("type", "loadstart");
        paramString.put("url", paramWebView);
        InAppBrowser.access$1100(this$0, paramString, true);
        return;
      }
      catch (JSONException paramWebView)
      {
        label448:
        Log.d("InAppBrowser", "Should never happen");
      }
      if (paramString.startsWith("tel:"))
      {
        try
        {
          paramWebView = new Intent("android.intent.action.DIAL");
          paramWebView.setData(Uri.parse(paramString));
          this$0.cordova.getActivity().startActivity(paramWebView);
          paramWebView = paramBitmap;
        }
        catch (ActivityNotFoundException paramWebView)
        {
          LOG.e("InAppBrowser", "Error dialing " + paramString + ": " + paramWebView.toString());
          paramWebView = paramBitmap;
        }
      }
      else if ((paramString.startsWith("geo:")) || (paramString.startsWith("mailto:")) || (paramString.startsWith("market:")))
      {
        try
        {
          paramWebView = new Intent("android.intent.action.VIEW");
          paramWebView.setData(Uri.parse(paramString));
          this$0.cordova.getActivity().startActivity(paramWebView);
          paramWebView = paramBitmap;
        }
        catch (ActivityNotFoundException paramWebView)
        {
          LOG.e("InAppBrowser", "Error with " + paramString + ": " + paramWebView.toString());
          paramWebView = paramBitmap;
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
                break label448;
              }
              paramWebView = paramString.substring(4);
              localIntent.setData(Uri.parse("sms:" + paramWebView));
              localIntent.putExtra("address", paramWebView);
              localIntent.setType("vnd.android-dir/mms-sms");
              this$0.cordova.getActivity().startActivity(localIntent);
              paramWebView = paramBitmap;
            }
            catch (ActivityNotFoundException paramWebView)
            {
              LOG.e("InAppBrowser", "Error sending sms " + paramString + ":" + paramWebView.toString());
              paramWebView = paramBitmap;
            }
            break;
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
        paramWebView = "http://" + paramString;
      }
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    try
    {
      paramWebView = new JSONObject();
      paramWebView.put("type", "loaderror");
      paramWebView.put("url", paramString2);
      paramWebView.put("code", paramInt);
      paramWebView.put("message", paramString1);
      InAppBrowser.access$1200(this$0, paramWebView, true, PluginResult.Status.ERROR);
      return;
    }
    catch (JSONException paramWebView)
    {
      Log.d("InAppBrowser", "Should never happen");
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.InAppBrowser.InAppBrowserClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */