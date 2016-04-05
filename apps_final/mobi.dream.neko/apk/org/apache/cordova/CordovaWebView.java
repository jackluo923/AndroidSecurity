package org.apache.cordova;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebHistoryItem;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.LOG;
import org.apache.cordova.api.PluginManager;
import org.apache.cordova.api.PluginResult;

public class CordovaWebView
  extends WebView
{
  static final FrameLayout.LayoutParams COVER_SCREEN_GRAVITY_CENTER = new FrameLayout.LayoutParams(-1, -1, 17);
  public static final String TAG = "CordovaWebView";
  private boolean bound;
  private CordovaChromeClient chromeClient;
  private CordovaInterface cordova;
  ExposedJsApi exposedJsApi;
  private boolean handleButton = false;
  NativeToJsMessageQueue jsMessageQueue;
  private ArrayList<Integer> keyDownCodes = new ArrayList();
  private ArrayList<Integer> keyUpCodes = new ArrayList();
  private long lastMenuEventTime = 0L;
  int loadUrlTimeout = 0;
  private View mCustomView;
  private WebChromeClient.CustomViewCallback mCustomViewCallback;
  private ActivityResult mResult = null;
  private boolean paused;
  public PluginManager pluginManager;
  private BroadcastReceiver receiver;
  private CordovaResourceApi resourceApi;
  private String url;
  CordovaWebViewClient viewClient;
  
  public CordovaWebView(Context paramContext)
  {
    super(paramContext);
    if (CordovaInterface.class.isInstance(paramContext)) {
      cordova = ((CordovaInterface)paramContext);
    }
    for (;;)
    {
      loadConfiguration();
      setup();
      return;
      Log.d("CordovaWebView", "Your activity must implement CordovaInterface to work");
    }
  }
  
  public CordovaWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (CordovaInterface.class.isInstance(paramContext)) {
      cordova = ((CordovaInterface)paramContext);
    }
    for (;;)
    {
      setWebChromeClient(new CordovaChromeClient(cordova, this));
      initWebViewClient(cordova);
      loadConfiguration();
      setup();
      return;
      Log.d("CordovaWebView", "Your activity must implement CordovaInterface to work");
    }
  }
  
  public CordovaWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (CordovaInterface.class.isInstance(paramContext)) {
      cordova = ((CordovaInterface)paramContext);
    }
    for (;;)
    {
      setWebChromeClient(new CordovaChromeClient(cordova, this));
      loadConfiguration();
      setup();
      return;
      Log.d("CordovaWebView", "Your activity must implement CordovaInterface to work");
    }
  }
  
  @TargetApi(11)
  public CordovaWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt, boolean paramBoolean)
  {
    super(paramContext, paramAttributeSet, paramInt, paramBoolean);
    if (CordovaInterface.class.isInstance(paramContext)) {
      cordova = ((CordovaInterface)paramContext);
    }
    for (;;)
    {
      setWebChromeClient(new CordovaChromeClient(cordova));
      initWebViewClient(cordova);
      loadConfiguration();
      setup();
      return;
      Log.d("CordovaWebView", "Your activity must implement CordovaInterface to work");
    }
  }
  
  private void exposeJsInterface()
  {
    int j = Build.VERSION.SDK_INT;
    if ((j >= 11) && (j <= 13)) {}
    for (int i = 1; (i != 0) || (j < 9); i = 0)
    {
      Log.i("CordovaWebView", "Disabled addJavascriptInterface() bridge since Android version is old.");
      return;
    }
    if ((j < 11) && (Build.MANUFACTURER.equals("unknown")))
    {
      Log.i("CordovaWebView", "Disabled addJavascriptInterface() bridge callback due to a bug on the 2.3 emulator");
      return;
    }
    addJavascriptInterface(exposedJsApi, "_cordovaNative");
  }
  
  private void initWebViewClient(CordovaInterface paramCordovaInterface)
  {
    if ((Build.VERSION.SDK_INT < 11) || (Build.VERSION.SDK_INT > 17))
    {
      setWebViewClient(new CordovaWebViewClient(cordova, this));
      return;
    }
    setWebViewClient(new IceCreamCordovaWebViewClient(cordova, this));
  }
  
  private void loadConfiguration()
  {
    if ("true".equals(getProperty("Fullscreen", "false")))
    {
      cordova.getActivity().getWindow().clearFlags(2048);
      cordova.getActivity().getWindow().setFlags(1024, 1024);
    }
  }
  
  @SuppressLint({"NewApi"})
  private void setup()
  {
    setInitialScale(0);
    setVerticalScrollBarEnabled(false);
    if (shouldRequestFocusOnInit()) {
      requestFocusFromTouch();
    }
    Object localObject1 = getSettings();
    ((WebSettings)localObject1).setJavaScriptEnabled(true);
    ((WebSettings)localObject1).setJavaScriptCanOpenWindowsAutomatically(true);
    ((WebSettings)localObject1).setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
    try
    {
      Object localObject2 = WebSettings.class.getMethod("setNavDump", new Class[] { Boolean.TYPE });
      String str = Build.MANUFACTURER;
      Log.d("CordovaWebView", "CordovaWebView is running on device made by: " + str);
      if ((Build.VERSION.SDK_INT < 11) && (Build.MANUFACTURER.contains("HTC"))) {
        ((Method)localObject2).invoke(localObject1, new Object[] { Boolean.valueOf(true) });
      }
      ((WebSettings)localObject1).setSaveFormData(false);
      ((WebSettings)localObject1).setSavePassword(false);
      if (Build.VERSION.SDK_INT > 15) {
        Level16Apis.enableUniversalAccess((WebSettings)localObject1);
      }
      localObject2 = cordova.getActivity().getApplicationContext().getDir("database", 0).getPath();
      ((WebSettings)localObject1).setDatabaseEnabled(true);
      ((WebSettings)localObject1).setDatabasePath((String)localObject2);
      ((WebSettings)localObject1).setGeolocationDatabasePath((String)localObject2);
      ((WebSettings)localObject1).setDomStorageEnabled(true);
      ((WebSettings)localObject1).setGeolocationEnabled(true);
      ((WebSettings)localObject1).setAppCacheMaxSize(5242880L);
      ((WebSettings)localObject1).setAppCachePath(cordova.getActivity().getApplicationContext().getDir("database", 0).getPath());
      ((WebSettings)localObject1).setAppCacheEnabled(true);
      updateUserAgentString();
      localObject1 = new IntentFilter();
      ((IntentFilter)localObject1).addAction("android.intent.action.CONFIGURATION_CHANGED");
      if (receiver == null)
      {
        receiver = new BroadcastReceiver()
        {
          public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
          {
            CordovaWebView.this.updateUserAgentString();
          }
        };
        cordova.getActivity().registerReceiver(receiver, (IntentFilter)localObject1);
      }
      pluginManager = new PluginManager(this, cordova);
      jsMessageQueue = new NativeToJsMessageQueue(this, cordova);
      exposedJsApi = new ExposedJsApi(pluginManager, jsMessageQueue);
      resourceApi = new CordovaResourceApi(getContext(), pluginManager);
      exposeJsInterface();
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        Log.d("CordovaWebView", "We are on a modern version of Android, we will deprecate HTC 2.3 devices in 2.8");
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        Log.d("CordovaWebView", "Doing the NavDump failed with bad arguments");
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        Log.d("CordovaWebView", "This should never happen: IllegalAccessException means this isn't Android anymore");
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        Log.d("CordovaWebView", "This should never happen: InvocationTargetException means this isn't Android anymore.");
      }
    }
  }
  
  private void updateUserAgentString()
  {
    getSettings().getUserAgentString();
  }
  
  public boolean backHistory()
  {
    if (super.canGoBack())
    {
      printBackForwardList();
      super.goBack();
      return true;
    }
    return false;
  }
  
  public void bindButton(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1)
    {
      keyDownCodes.add(Integer.valueOf(paramInt));
      return;
    }
    keyUpCodes.add(Integer.valueOf(paramInt));
  }
  
  public void bindButton(String paramString, boolean paramBoolean)
  {
    if (paramString.compareTo("volumeup") == 0) {
      keyDownCodes.add(Integer.valueOf(24));
    }
    while (paramString.compareTo("volumedown") != 0) {
      return;
    }
    keyDownCodes.add(Integer.valueOf(25));
  }
  
  public void bindButton(boolean paramBoolean)
  {
    bound = paramBoolean;
  }
  
  public String getProperty(String paramString1, String paramString2)
  {
    Bundle localBundle = cordova.getActivity().getIntent().getExtras();
    if (localBundle == null) {}
    do
    {
      return paramString2;
      paramString1 = localBundle.get(paramString1.toLowerCase(Locale.getDefault()));
    } while (paramString1 == null);
    return paramString1.toString();
  }
  
  public CordovaResourceApi getResourceApi()
  {
    return resourceApi;
  }
  
  public CordovaChromeClient getWebChromeClient()
  {
    return chromeClient;
  }
  
  public boolean hadKeyEvent()
  {
    return handleButton;
  }
  
  public void handleDestroy()
  {
    loadUrl("javascript:try{cordova.require('cordova/channel').onDestroy.fire();}catch(e){console.log('exception firing destroy event from native');};");
    loadUrl("about:blank");
    if (pluginManager != null) {
      pluginManager.onDestroy();
    }
    if (receiver != null) {}
    try
    {
      cordova.getActivity().unregisterReceiver(receiver);
      return;
    }
    catch (Exception localException)
    {
      Log.e("CordovaWebView", "Error unregistering configuration receiver: " + localException.getMessage(), localException);
    }
  }
  
  public void handlePause(boolean paramBoolean)
  {
    LOG.d("CordovaWebView", "Handle the pause");
    loadUrl("javascript:try{cordova.fireDocumentEvent('pause');}catch(e){console.log('exception firing pause event from native');};");
    if (pluginManager != null) {
      pluginManager.onPause(paramBoolean);
    }
    if (!paramBoolean) {
      pauseTimers();
    }
    paused = true;
  }
  
  public void handleResume(boolean paramBoolean1, boolean paramBoolean2)
  {
    loadUrl("javascript:try{cordova.fireDocumentEvent('resume');}catch(e){console.log('exception firing resume event from native');};");
    if (pluginManager != null) {
      pluginManager.onResume(paramBoolean1);
    }
    resumeTimers();
    paused = false;
  }
  
  public void hideCustomView()
  {
    Log.d("CordovaWebView", "Hidding Custom View");
    if (mCustomView == null) {
      return;
    }
    mCustomView.setVisibility(8);
    ((ViewGroup)getParent()).removeView(mCustomView);
    mCustomView = null;
    mCustomViewCallback.onCustomViewHidden();
    setVisibility(0);
  }
  
  public boolean isBackButtonBound()
  {
    return bound;
  }
  
  public boolean isCustomViewShowing()
  {
    return mCustomView != null;
  }
  
  public boolean isPaused()
  {
    return paused;
  }
  
  public void loadUrl(String paramString)
  {
    if ((paramString.equals("about:blank")) || (paramString.startsWith("javascript:")))
    {
      loadUrlNow(paramString);
      return;
    }
    String str = getProperty("url", null);
    if (str == null)
    {
      loadUrlIntoView(paramString);
      return;
    }
    loadUrlIntoView(str);
  }
  
  public void loadUrl(String paramString, int paramInt)
  {
    String str = getProperty("url", null);
    if (str == null)
    {
      loadUrlIntoView(paramString, paramInt);
      return;
    }
    loadUrlIntoView(str);
  }
  
  public void loadUrlIntoView(final String paramString)
  {
    LOG.d("CordovaWebView", ">>> loadUrl(" + paramString + ")");
    url = paramString;
    pluginManager.init();
    final int i = loadUrlTimeout;
    final Runnable local3 = new Runnable()
    {
      public void run()
      {
        jdField_this.stopLoading();
        LOG.e("CordovaWebView", "CordovaWebView: TIMEOUT ERROR!");
        if (viewClient != null) {
          viewClient.onReceivedError(jdField_this, -6, "The connection to the server was unsuccessful.", paramString);
        }
      }
    }
    {
      public void run()
      {
        for (;;)
        {
          try {}catch (InterruptedException localInterruptedException)
          {
            localInterruptedException.printStackTrace();
            continue;
          }
          try
          {
            wait(val$loadUrlTimeoutValue);
            if (jdField_thisloadUrlTimeout == i) {
              jdField_thiscordova.getActivity().runOnUiThread(val$loadError);
            }
            return;
          }
          finally {}
        }
      }
    };
    cordova.getActivity().runOnUiThread(new Runnable()
    {
      public void run()
      {
        new Thread(local3).start();
        jdField_this.loadUrlNow(paramString);
      }
    });
  }
  
  public void loadUrlIntoView(String paramString, int paramInt)
  {
    if ((paramString.startsWith("javascript:")) || (canGoBack())) {}
    for (;;)
    {
      loadUrlIntoView(paramString);
      return;
      LOG.d("CordovaWebView", "loadUrlIntoView(%s, %d)", new Object[] { paramString, Integer.valueOf(paramInt) });
      postMessage("splashscreen", "show");
    }
  }
  
  void loadUrlNow(String paramString)
  {
    if ((LOG.isLoggable(3)) && (!paramString.startsWith("javascript:"))) {
      LOG.d("CordovaWebView", ">>> loadUrlNow()");
    }
    if ((paramString.startsWith("file://")) || (paramString.startsWith("javascript:")) || (Config.isUrlWhiteListed(paramString))) {
      super.loadUrl(paramString);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (keyDownCodes.contains(Integer.valueOf(paramInt)))
    {
      if (paramInt == 25)
      {
        LOG.d("CordovaWebView", "Down Key Hit");
        loadUrl("javascript:cordova.fireDocumentEvent('volumedownbutton');");
        return true;
      }
      if (paramInt == 24)
      {
        LOG.d("CordovaWebView", "Up Key Hit");
        loadUrl("javascript:cordova.fireDocumentEvent('volumeupbutton');");
        return true;
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    if (paramInt == 4)
    {
      if ((!startOfHistory()) || (bound)) {
        bool = true;
      }
      return bool;
    }
    if (paramInt == 82)
    {
      View localView = getFocusedChild();
      if (localView != null)
      {
        ((InputMethodManager)cordova.getActivity().getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 0);
        cordova.getActivity().openOptionsMenu();
        return true;
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (paramInt == 4) {
      if (mCustomView != null) {
        hideCustomView();
      }
    }
    do
    {
      for (;;)
      {
        bool = super.onKeyUp(paramInt, paramKeyEvent);
        do
        {
          return bool;
          if (bound)
          {
            loadUrl("javascript:cordova.fireDocumentEvent('backbutton');");
            return true;
          }
        } while (backHistory());
        cordova.getActivity().finish();
      }
      if (paramInt == 82)
      {
        if (lastMenuEventTime < paramKeyEvent.getEventTime()) {
          loadUrl("javascript:cordova.fireDocumentEvent('menubutton');");
        }
        lastMenuEventTime = paramKeyEvent.getEventTime();
        return super.onKeyUp(paramInt, paramKeyEvent);
      }
      if (paramInt == 84)
      {
        loadUrl("javascript:cordova.fireDocumentEvent('searchbutton');");
        return true;
      }
    } while (!keyUpCodes.contains(Integer.valueOf(paramInt)));
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    if (pluginManager != null) {
      pluginManager.onNewIntent(paramIntent);
    }
  }
  
  public void postMessage(String paramString, Object paramObject)
  {
    if (pluginManager != null) {
      pluginManager.postMessage(paramString, paramObject);
    }
  }
  
  public void printBackForwardList()
  {
    WebBackForwardList localWebBackForwardList = copyBackForwardList();
    int j = localWebBackForwardList.getSize();
    int i = 0;
    while (i < j)
    {
      String str = localWebBackForwardList.getItemAtIndex(i).getUrl();
      LOG.d("CordovaWebView", "The URL at index: " + Integer.toString(i) + "is " + str);
      i += 1;
    }
  }
  
  public WebBackForwardList restoreState(Bundle paramBundle)
  {
    paramBundle = super.restoreState(paramBundle);
    Log.d("CordovaWebView", "WebView restoration crew now restoring!");
    pluginManager.init();
    return paramBundle;
  }
  
  public void sendJavascript(String paramString)
  {
    jsMessageQueue.addJavaScript(paramString);
  }
  
  public void sendPluginResult(PluginResult paramPluginResult, String paramString)
  {
    jsMessageQueue.addPluginResult(paramPluginResult, paramString);
  }
  
  public void setWebChromeClient(CordovaChromeClient paramCordovaChromeClient)
  {
    chromeClient = paramCordovaChromeClient;
    super.setWebChromeClient(paramCordovaChromeClient);
  }
  
  public void setWebViewClient(CordovaWebViewClient paramCordovaWebViewClient)
  {
    viewClient = paramCordovaWebViewClient;
    super.setWebViewClient(paramCordovaWebViewClient);
  }
  
  protected boolean shouldRequestFocusOnInit()
  {
    return true;
  }
  
  public void showCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    Log.d("CordovaWebView", "showing Custom View");
    if (mCustomView != null)
    {
      paramCustomViewCallback.onCustomViewHidden();
      return;
    }
    mCustomView = paramView;
    mCustomViewCallback = paramCustomViewCallback;
    paramCustomViewCallback = (ViewGroup)getParent();
    paramCustomViewCallback.addView(paramView, COVER_SCREEN_GRAVITY_CENTER);
    setVisibility(8);
    paramCustomViewCallback.setVisibility(0);
    paramCustomViewCallback.bringToFront();
  }
  
  public void showWebPage(String paramString, boolean paramBoolean1, boolean paramBoolean2, HashMap<String, Object> paramHashMap)
  {
    LOG.d("CordovaWebView", "showWebPage(%s, %b, %b, HashMap", new Object[] { paramString, Boolean.valueOf(paramBoolean1), Boolean.valueOf(paramBoolean2) });
    if (paramBoolean2) {
      clearHistory();
    }
    if (!paramBoolean1)
    {
      if ((paramString.startsWith("file://")) || (Config.isUrlWhiteListed(paramString)))
      {
        loadUrl(paramString);
        return;
      }
      LOG.w("CordovaWebView", "showWebPage: Cannot load URL into webview since it is not in white list.  Loading into browser instead. (URL=" + paramString + ")");
      try
      {
        paramHashMap = new Intent("android.intent.action.VIEW");
        paramHashMap.setData(Uri.parse(paramString));
        cordova.getActivity().startActivity(paramHashMap);
        return;
      }
      catch (ActivityNotFoundException paramHashMap)
      {
        LOG.e("CordovaWebView", "Error loading url " + paramString, paramHashMap);
        return;
      }
    }
    try
    {
      paramHashMap = new Intent("android.intent.action.VIEW");
      paramHashMap.setData(Uri.parse(paramString));
      cordova.getActivity().startActivity(paramHashMap);
      return;
    }
    catch (ActivityNotFoundException paramHashMap)
    {
      LOG.e("CordovaWebView", "Error loading url " + paramString, paramHashMap);
    }
  }
  
  public boolean startOfHistory()
  {
    boolean bool = false;
    Object localObject = copyBackForwardList().getItemAtIndex(0);
    if (localObject != null)
    {
      localObject = ((WebHistoryItem)localObject).getUrl();
      String str = getUrl();
      LOG.d("CordovaWebView", "The current URL is: " + str);
      LOG.d("CordovaWebView", "The URL at item 0 is:" + (String)localObject);
      bool = str.equals(localObject);
    }
    return bool;
  }
  
  public void storeResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    mResult = new ActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  class ActivityResult
  {
    Intent incoming;
    int request;
    int result;
    
    public ActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
    {
      request = paramInt1;
      result = paramInt2;
      incoming = paramIntent;
    }
  }
  
  @TargetApi(16)
  private static class Level16Apis
  {
    static void enableUniversalAccess(WebSettings paramWebSettings)
    {
      paramWebSettings.setAllowUniversalAccessFromFileURLs(true);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */