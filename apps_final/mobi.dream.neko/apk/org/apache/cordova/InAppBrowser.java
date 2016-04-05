package org.apache.cordova;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.io.File;
import java.util.HashMap;
import java.util.StringTokenizer;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.LOG;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"SetJavaScriptEnabled"})
public class InAppBrowser
  extends CordovaPlugin
{
  private static final String CLEAR_ALL_CACHE = "clearcache";
  private static final String CLEAR_SESSION_CACHE = "clearsessioncache";
  private static final String CLOSE_BUTTON_CAPTION = "closebuttoncaption";
  private static final String EXIT_EVENT = "exit";
  private static final String HIDDEN = "hidden";
  private static final String LOAD_ERROR_EVENT = "loaderror";
  private static final String LOAD_START_EVENT = "loadstart";
  private static final String LOAD_STOP_EVENT = "loadstop";
  private static final String LOCATION = "location";
  protected static final String LOG_TAG = "InAppBrowser";
  private static final String NULL = "null";
  private static final String SELF = "_self";
  private static final String SYSTEM = "_system";
  private String buttonLabel = "Done";
  private CallbackContext callbackContext;
  private boolean clearAllCache = false;
  private boolean clearSessionCache = false;
  private Dialog dialog;
  private EditText edittext;
  private WebView inAppWebView;
  private boolean openWindowHidden = false;
  private boolean showLocationBar = true;
  
  private boolean getShowLocationBar()
  {
    return showLocationBar;
  }
  
  private void goBack()
  {
    if (inAppWebView.canGoBack()) {
      inAppWebView.goBack();
    }
  }
  
  private void goForward()
  {
    if (inAppWebView.canGoForward()) {
      inAppWebView.goForward();
    }
  }
  
  private void injectDeferredObject(final String paramString1, String paramString2)
  {
    if (paramString2 != null)
    {
      JSONArray localJSONArray = new JSONArray();
      localJSONArray.put(paramString1);
      paramString1 = localJSONArray.toString();
      paramString1 = String.format(paramString2, new Object[] { paramString1.substring(1, paramString1.length() - 1) });
    }
    for (;;)
    {
      cordova.getActivity().runOnUiThread(new Runnable()
      {
        public void run()
        {
          inAppWebView.loadUrl("javascript:" + paramString1);
        }
      });
      return;
    }
  }
  
  private void navigate(String paramString)
  {
    ((InputMethodManager)cordova.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(edittext.getWindowToken(), 0);
    if ((!paramString.startsWith("http")) && (!paramString.startsWith("file:"))) {
      inAppWebView.loadUrl("http://" + paramString);
    }
    for (;;)
    {
      inAppWebView.requestFocus();
      return;
      inAppWebView.loadUrl(paramString);
    }
  }
  
  private HashMap<String, Boolean> parseFeature(String paramString)
  {
    if (paramString.equals("null"))
    {
      paramString = null;
      return paramString;
    }
    HashMap localHashMap = new HashMap();
    StringTokenizer localStringTokenizer = new StringTokenizer(paramString, ",");
    String str;
    for (;;)
    {
      paramString = localHashMap;
      if (!localStringTokenizer.hasMoreElements()) {
        break;
      }
      paramString = new StringTokenizer(localStringTokenizer.nextToken(), "=");
      if (paramString.hasMoreElements())
      {
        str = paramString.nextToken();
        if (!str.equalsIgnoreCase("closebuttoncaption")) {
          break label91;
        }
        buttonLabel = paramString.nextToken();
      }
    }
    label91:
    if (paramString.nextToken().equals("no")) {}
    for (paramString = Boolean.FALSE;; paramString = Boolean.TRUE)
    {
      localHashMap.put(str, paramString);
      break;
    }
  }
  
  private void sendUpdate(JSONObject paramJSONObject, boolean paramBoolean)
  {
    sendUpdate(paramJSONObject, paramBoolean, PluginResult.Status.OK);
  }
  
  private void sendUpdate(JSONObject paramJSONObject, boolean paramBoolean, PluginResult.Status paramStatus)
  {
    if (callbackContext != null)
    {
      paramJSONObject = new PluginResult(paramStatus, paramJSONObject);
      paramJSONObject.setKeepCallback(paramBoolean);
      callbackContext.sendPluginResult(paramJSONObject);
      if (!paramBoolean) {
        callbackContext = null;
      }
    }
  }
  
  public void closeDialog()
  {
    final Object localObject = inAppWebView;
    if (localObject == null) {
      return;
    }
    cordova.getActivity().runOnUiThread(new Runnable()
    {
      public void run()
      {
        localObject.loadUrl("about:blank");
        if (dialog != null) {
          dialog.dismiss();
        }
      }
    });
    try
    {
      localObject = new JSONObject();
      ((JSONObject)localObject).put("type", "exit");
      sendUpdate((JSONObject)localObject, false);
      return;
    }
    catch (JSONException localJSONException)
    {
      Log.d("InAppBrowser", "Should never happen");
    }
  }
  
  public boolean execute(final String paramString, final CordovaArgs paramCordovaArgs, final CallbackContext paramCallbackContext)
    throws JSONException
  {
    boolean bool = false;
    if (paramString.equals("open"))
    {
      callbackContext = paramCallbackContext;
      final String str2 = paramCordovaArgs.getString(0);
      String str1 = paramCordovaArgs.optString(1);
      if ((str1 != null) && (!str1.equals("")))
      {
        paramString = str1;
        if (!str1.equals("null")) {}
      }
      else
      {
        paramString = "_self";
      }
      paramCordovaArgs = parseFeature(paramCordovaArgs.optString(2));
      Log.d("InAppBrowser", "target = " + paramString);
      cordova.getActivity().runOnUiThread(new Runnable()
      {
        public void run()
        {
          Object localObject = "";
          if ("_self".equals(paramString))
          {
            Log.d("InAppBrowser", "in self");
            if ((str2.startsWith("file://")) || (str2.startsWith("javascript:")) || (Config.isUrlWhiteListed(str2))) {
              webView.loadUrl(str2);
            }
          }
          for (;;)
          {
            localObject = new PluginResult(PluginResult.Status.OK, (String)localObject);
            ((PluginResult)localObject).setKeepCallback(true);
            paramCallbackContext.sendPluginResult((PluginResult)localObject);
            return;
            if (str2.startsWith("tel:"))
            {
              try
              {
                Intent localIntent = new Intent("android.intent.action.DIAL");
                localIntent.setData(Uri.parse(str2));
                cordova.getActivity().startActivity(localIntent);
              }
              catch (ActivityNotFoundException localActivityNotFoundException)
              {
                LOG.e("InAppBrowser", "Error dialing " + str2 + ": " + localActivityNotFoundException.toString());
              }
            }
            else
            {
              localObject = showWebPage(str2, paramCordovaArgs);
              continue;
              if ("_system".equals(paramString))
              {
                Log.d("InAppBrowser", "in system");
                localObject = openExternal(str2);
              }
              else
              {
                Log.d("InAppBrowser", "in blank");
                localObject = showWebPage(str2, paramCordovaArgs);
              }
            }
          }
        }
      });
    }
    for (;;)
    {
      bool = true;
      do
      {
        return bool;
        if (paramString.equals("close"))
        {
          closeDialog();
          break;
        }
        if (paramString.equals("injectScriptCode"))
        {
          paramString = null;
          if (paramCordovaArgs.getBoolean(1)) {
            paramString = String.format("prompt(JSON.stringify([eval(%%s)]), 'gap-iab://%s')", new Object[] { paramCallbackContext.getCallbackId() });
          }
          injectDeferredObject(paramCordovaArgs.getString(0), paramString);
          break;
        }
        if (paramString.equals("injectScriptFile"))
        {
          if (paramCordovaArgs.getBoolean(1)) {}
          for (paramString = String.format("(function(d) { var c = d.createElement('script'); c.src = %%s; c.onload = function() { prompt('', 'gap-iab://%s'); }; d.body.appendChild(c); })(document)", new Object[] { paramCallbackContext.getCallbackId() });; paramString = "(function(d) { var c = d.createElement('script'); c.src = %s; d.body.appendChild(c); })(document)")
          {
            injectDeferredObject(paramCordovaArgs.getString(0), paramString);
            break;
          }
        }
        if (paramString.equals("injectStyleCode"))
        {
          if (paramCordovaArgs.getBoolean(1)) {}
          for (paramString = String.format("(function(d) { var c = d.createElement('style'); c.innerHTML = %%s; d.body.appendChild(c); prompt('', 'gap-iab://%s');})(document)", new Object[] { paramCallbackContext.getCallbackId() });; paramString = "(function(d) { var c = d.createElement('style'); c.innerHTML = %s; d.body.appendChild(c); })(document)")
          {
            injectDeferredObject(paramCordovaArgs.getString(0), paramString);
            break;
          }
        }
        if (paramString.equals("injectStyleFile"))
        {
          if (paramCordovaArgs.getBoolean(1)) {}
          for (paramString = String.format("(function(d) { var c = d.createElement('link'); c.rel='stylesheet'; c.type='text/css'; c.href = %%s; d.head.appendChild(c); prompt('', 'gap-iab://%s');})(document)", new Object[] { paramCallbackContext.getCallbackId() });; paramString = "(function(d) { var c = d.createElement('link'); c.rel='stylesheet'; c.type='text/css'; c.href = %s; d.head.appendChild(c); })(document)")
          {
            injectDeferredObject(paramCordovaArgs.getString(0), paramString);
            break;
          }
        }
      } while (!paramString.equals("show"));
      cordova.getActivity().runOnUiThread(new Runnable()
      {
        public void run()
        {
          dialog.show();
        }
      });
      paramString = new PluginResult(PluginResult.Status.OK);
      paramString.setKeepCallback(true);
      callbackContext.sendPluginResult(paramString);
    }
  }
  
  public void onDestroy()
  {
    closeDialog();
  }
  
  public void onReset()
  {
    closeDialog();
  }
  
  public String openExternal(String paramString)
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      Log.d("InAppBrowser", "InAppBrowser: Error loading url " + paramString + ":" + localActivityNotFoundException1.toString());
    }
    catch (ActivityNotFoundException localActivityNotFoundException1)
    {
      try
      {
        localIntent.setData(Uri.parse(paramString));
        cordova.getActivity().startActivity(localIntent);
        return "";
      }
      catch (ActivityNotFoundException localActivityNotFoundException2)
      {
        for (;;) {}
      }
      localActivityNotFoundException1 = localActivityNotFoundException1;
    }
    return localActivityNotFoundException1.toString();
  }
  
  public String showWebPage(final String paramString, HashMap<String, Boolean> paramHashMap)
  {
    showLocationBar = true;
    openWindowHidden = false;
    if (paramHashMap != null)
    {
      Boolean localBoolean = (Boolean)paramHashMap.get("location");
      if (localBoolean != null) {
        showLocationBar = localBoolean.booleanValue();
      }
      localBoolean = (Boolean)paramHashMap.get("hidden");
      if (localBoolean != null) {
        openWindowHidden = localBoolean.booleanValue();
      }
      localBoolean = (Boolean)paramHashMap.get("clearcache");
      if (localBoolean == null) {
        break label111;
      }
      clearAllCache = localBoolean.booleanValue();
    }
    for (;;)
    {
      paramString = new Runnable()
      {
        private int dpToPixels(int paramAnonymousInt)
        {
          return (int)TypedValue.applyDimension(1, paramAnonymousInt, cordova.getActivity().getResources().getDisplayMetrics());
        }
        
        public void run()
        {
          InAppBrowser.access$002(InAppBrowser.this, new Dialog(cordova.getActivity(), 16973830));
          dialog.getWindow().getAttributes().windowAnimations = 16973826;
          dialog.requestWindowFeature(1);
          dialog.setCancelable(true);
          dialog.setOnDismissListener(new DialogInterface.OnDismissListener()
          {
            public void onDismiss(DialogInterface paramAnonymous2DialogInterface)
            {
              closeDialog();
            }
          });
          LinearLayout localLinearLayout = new LinearLayout(cordova.getActivity());
          localLinearLayout.setOrientation(1);
          Object localObject1 = new RelativeLayout(cordova.getActivity());
          ((RelativeLayout)localObject1).setBackgroundColor(-3355444);
          ((RelativeLayout)localObject1).setLayoutParams(new RelativeLayout.LayoutParams(-1, dpToPixels(44)));
          ((RelativeLayout)localObject1).setPadding(dpToPixels(2), dpToPixels(2), dpToPixels(2), dpToPixels(2));
          ((RelativeLayout)localObject1).setHorizontalGravity(3);
          ((RelativeLayout)localObject1).setVerticalGravity(48);
          RelativeLayout localRelativeLayout = new RelativeLayout(cordova.getActivity());
          localRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
          localRelativeLayout.setHorizontalGravity(3);
          localRelativeLayout.setVerticalGravity(16);
          localRelativeLayout.setId(1);
          Button localButton = new Button(cordova.getActivity());
          Object localObject2 = new RelativeLayout.LayoutParams(-2, -1);
          ((RelativeLayout.LayoutParams)localObject2).addRule(5);
          localButton.setLayoutParams((ViewGroup.LayoutParams)localObject2);
          localButton.setContentDescription("Back Button");
          localButton.setId(2);
          localButton.setText("<");
          localButton.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              InAppBrowser.this.goBack();
            }
          });
          localObject2 = new Button(cordova.getActivity());
          Object localObject3 = new RelativeLayout.LayoutParams(-2, -1);
          ((RelativeLayout.LayoutParams)localObject3).addRule(1, 2);
          ((Button)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
          ((Button)localObject2).setContentDescription("Forward Button");
          ((Button)localObject2).setId(3);
          ((Button)localObject2).setText(">");
          ((Button)localObject2).setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              InAppBrowser.this.goForward();
            }
          });
          InAppBrowser.access$402(InAppBrowser.this, new EditText(cordova.getActivity()));
          localObject3 = new RelativeLayout.LayoutParams(-1, -1);
          ((RelativeLayout.LayoutParams)localObject3).addRule(1, 1);
          ((RelativeLayout.LayoutParams)localObject3).addRule(0, 5);
          edittext.setLayoutParams((ViewGroup.LayoutParams)localObject3);
          edittext.setId(4);
          edittext.setSingleLine(true);
          edittext.setText(paramString);
          edittext.setInputType(16);
          edittext.setImeOptions(2);
          edittext.setInputType(0);
          edittext.setOnKeyListener(new View.OnKeyListener()
          {
            public boolean onKey(View paramAnonymous2View, int paramAnonymous2Int, KeyEvent paramAnonymous2KeyEvent)
            {
              if ((paramAnonymous2KeyEvent.getAction() == 0) && (paramAnonymous2Int == 66))
              {
                InAppBrowser.this.navigate(edittext.getText().toString());
                return true;
              }
              return false;
            }
          });
          localObject3 = new Button(cordova.getActivity());
          Object localObject4 = new RelativeLayout.LayoutParams(-2, -1);
          ((RelativeLayout.LayoutParams)localObject4).addRule(11);
          ((Button)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
          ((Button)localObject2).setContentDescription("Close Button");
          ((Button)localObject3).setId(5);
          ((Button)localObject3).setText(buttonLabel);
          ((Button)localObject3).setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              closeDialog();
            }
          });
          InAppBrowser.access$102(InAppBrowser.this, new WebView(cordova.getActivity()));
          inAppWebView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
          inAppWebView.setWebChromeClient(new InAppChromeClient(val$thatWebView));
          localObject4 = new InAppBrowser.InAppBrowserClient(InAppBrowser.this, val$thatWebView, edittext);
          inAppWebView.setWebViewClient((WebViewClient)localObject4);
          localObject4 = inAppWebView.getSettings();
          ((WebSettings)localObject4).setJavaScriptEnabled(true);
          ((WebSettings)localObject4).setJavaScriptCanOpenWindowsAutomatically(true);
          ((WebSettings)localObject4).setBuiltInZoomControls(true);
          ((WebSettings)localObject4).setPluginState(WebSettings.PluginState.ON);
          Bundle localBundle = cordova.getActivity().getIntent().getExtras();
          boolean bool;
          if (localBundle == null)
          {
            bool = true;
            if (bool)
            {
              ((WebSettings)localObject4).setDatabasePath(cordova.getActivity().getApplicationContext().getDir("inAppBrowserDB", 0).getPath());
              ((WebSettings)localObject4).setDatabaseEnabled(true);
            }
            ((WebSettings)localObject4).setDomStorageEnabled(true);
            if (!clearAllCache) {
              break label1113;
            }
            CookieManager.getInstance().removeAllCookie();
          }
          for (;;)
          {
            inAppWebView.loadUrl(paramString);
            inAppWebView.setId(6);
            inAppWebView.getSettings().setLoadWithOverviewMode(true);
            inAppWebView.getSettings().setUseWideViewPort(true);
            inAppWebView.requestFocus();
            inAppWebView.requestFocusFromTouch();
            localRelativeLayout.addView(localButton);
            localRelativeLayout.addView((View)localObject2);
            ((RelativeLayout)localObject1).addView(localRelativeLayout);
            ((RelativeLayout)localObject1).addView(edittext);
            ((RelativeLayout)localObject1).addView((View)localObject3);
            if (InAppBrowser.this.getShowLocationBar()) {
              localLinearLayout.addView((View)localObject1);
            }
            localLinearLayout.addView(inAppWebView);
            localObject1 = new WindowManager.LayoutParams();
            ((WindowManager.LayoutParams)localObject1).copyFrom(dialog.getWindow().getAttributes());
            width = -1;
            height = -1;
            dialog.setContentView(localLinearLayout);
            dialog.show();
            dialog.getWindow().setAttributes((WindowManager.LayoutParams)localObject1);
            if (openWindowHidden) {
              dialog.hide();
            }
            return;
            bool = localBundle.getBoolean("InAppBrowserStorageEnabled", true);
            break;
            label1113:
            if (clearSessionCache) {
              CookieManager.getInstance().removeSessionCookie();
            }
          }
        }
      };
      cordova.getActivity().runOnUiThread(paramString);
      return "";
      label111:
      paramHashMap = (Boolean)paramHashMap.get("clearsessioncache");
      if (paramHashMap != null) {
        clearSessionCache = paramHashMap.booleanValue();
      }
    }
  }
  
  public class InAppBrowserClient
    extends WebViewClient
  {
    EditText edittext;
    CordovaWebView webView;
    
    public InAppBrowserClient(CordovaWebView paramCordovaWebView, EditText paramEditText)
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
        InAppBrowser.this.sendUpdate(paramWebView, true);
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
          InAppBrowser.this.sendUpdate(paramString, true);
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
            cordova.getActivity().startActivity(paramWebView);
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
            cordova.getActivity().startActivity(paramWebView);
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
                cordova.getActivity().startActivity(localIntent);
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
        InAppBrowser.this.sendUpdate(paramWebView, true, PluginResult.Status.ERROR);
        return;
      }
      catch (JSONException paramWebView)
      {
        Log.d("InAppBrowser", "Should never happen");
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.InAppBrowser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */