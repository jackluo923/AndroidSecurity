package mobi.monaca.framework;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import mobi.monaca.framework.bootloader.LocalFileBootloader;
import mobi.monaca.framework.nativeui.ComponentEventer;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.nativeui.UIEventer;
import mobi.monaca.framework.nativeui.UIUtil;
import mobi.monaca.framework.nativeui.UpdateStyleQuery;
import mobi.monaca.framework.nativeui.component.Component;
import mobi.monaca.framework.nativeui.component.PageComponent;
import mobi.monaca.framework.nativeui.component.PageOrientation;
import mobi.monaca.framework.nativeui.container.Container;
import mobi.monaca.framework.nativeui.container.ToolbarContainer;
import mobi.monaca.framework.nativeui.exception.NativeUIException;
import mobi.monaca.framework.nativeui.menu.MenuRepresentation;
import mobi.monaca.framework.psedo.R.anim;
import mobi.monaca.framework.psedo.R.raw;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.psedo.R.style;
import mobi.monaca.framework.transition.BackgroundDrawable;
import mobi.monaca.framework.transition.ClosePageIntent;
import mobi.monaca.framework.transition.TransitionParams;
import mobi.monaca.framework.transition.TransitionParams.TransitionAnimationType;
import mobi.monaca.framework.util.AssetUtils;
import mobi.monaca.framework.util.BenchmarkTimer;
import mobi.monaca.framework.util.InputStreamLoader;
import mobi.monaca.framework.util.MyLog;
import mobi.monaca.framework.util.UrlUtil;
import mobi.monaca.framework.view.MonacaPageGingerbreadWebViewClient;
import mobi.monaca.framework.view.MonacaPageHoneyCombWebViewClient;
import mobi.monaca.framework.view.MonacaWebView;
import mobi.monaca.utils.TimeStamp;
import mobi.monaca.utils.gcm.GCMPushDataset;
import mobi.monaca.utils.log.LogItem;
import mobi.monaca.utils.log.LogItem.LogLevel;
import mobi.monaca.utils.log.LogItem.Source;
import org.apache.commons.io.IOUtils;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.CordovaWebViewClient;
import org.apache.cordova.DroidGap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MonacaPageActivity
  extends DroidGap
{
  private static final int MONACA_TRANSIT_REQUEST = 3333;
  public static final String TAG = MonacaPageActivity.class.getSimpleName();
  public static final String TRANSITION_PARAM_NAME = UserIdentifier.identifier[3];
  public static final String URL_PARAM_NAME = UserIdentifier.identifier[4];
  protected Drawable background = null;
  protected BroadcastReceiver closePageReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      int i = paramAnonymousIntent.getIntExtra(getString(R.string.key_closepage_level), 0);
      if (pageIndex >= i) {
        finish();
      }
    }
  };
  protected MonacaURI currentMonacaUri;
  protected Handler handler = new Handler();
  protected JSONObject infoForJavaScript = new JSONObject();
  protected boolean isCapableForTransition = true;
  private boolean isOnDestroyMonacaCalled = false;
  protected MonacaApplication mApp;
  protected String mCurrentHtml;
  private PageComponent mPageComponent;
  protected Dialog monacaSplashDialog;
  protected int pageIndex = 0;
  protected GCMPushDataset pushData;
  protected BroadcastReceiver pushReceiver = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (isIndex())
      {
        paramAnonymousContext = (GCMPushDataset)paramAnonymousIntent.getExtras().get("get_pushdata_key");
        sendPushToWebView(paramAnonymousContext);
      }
    }
  };
  protected TransitionParams transitionParams;
  protected UIContext uiContext = null;
  
  private int getScreenOrientationOfMonacaPageActivity(PackageInfo paramPackageInfo)
  {
    paramPackageInfo = activities;
    if (paramPackageInfo != null)
    {
      int i = 0;
      while (i < paramPackageInfo.length)
      {
        Object localObject = paramPackageInfo[i];
        if (name.equalsIgnoreCase(MonacaPageActivity.class.getName())) {
          return screenOrientation;
        }
        i += 1;
      }
    }
    return 4;
  }
  
  private final void onDestroyMonacaCaller()
  {
    if (!isOnDestroyMonacaCalled)
    {
      onDestroyMonaca();
      isOnDestroyMonacaCalled = true;
    }
  }
  
  private void requestJStoProcessMessages()
  {
    appView.sendJavascript(getString(R.string.script_request_processjs));
  }
  
  private void triggerOnReactivate()
  {
    if ((appView != null) && (appView.pluginManager != null))
    {
      String str = getString(R.string.script_trigger_onreactivate);
      appView.loadUrl(str);
    }
  }
  
  public void _popPage()
  {
    int i = MonacaApplication.getPages().size();
    finish();
    if (i > 1) {
      overridePendingTransition(R.anim.monaca_slide_close_enter, R.anim.monaca_slide_close_exit);
    }
  }
  
  public void applyScreenOrientation(PageOrientation paramPageOrientation)
  {
    if (paramPageOrientation == null)
    {
      applyScreenOrientationFromManifest();
      return;
    }
    switch (paramPageOrientation)
    {
    default: 
      return;
    case ???: 
      setRequestedOrientation(1);
      return;
    case ???: 
      setRequestedOrientation(0);
      return;
    case ???: 
      setRequestedOrientation(4);
      return;
    }
    applyScreenOrientationFromManifest();
  }
  
  protected void applyScreenOrientationFromManifest()
  {
    try
    {
      setRequestedOrientation(getScreenOrientationOfMonacaPageActivity(getPackageManager().getPackageInfo(getPackageName(), 1)));
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
  }
  
  @SuppressLint({"NewApi"})
  protected void applyUiToView()
  {
    if (mPageComponent == null)
    {
      applyScreenOrientationFromManifest();
      return;
    }
    setupBackground(mPageComponent.getBackgroundDrawable());
    applyScreenOrientation(mPageComponent.getScreenOrientation());
    root.removeAllViews();
    Object localObject1 = (ViewGroup)appView.getParent();
    if (localObject1 != null) {
      ((ViewGroup)localObject1).removeAllViews();
    }
    localObject1 = new RelativeLayout(this);
    root.addView((View)localObject1, new LinearLayout.LayoutParams(-1, -1));
    ToolbarContainer localToolbarContainer = (ToolbarContainer)mPageComponent.getTopComponent();
    int i = 0;
    if (localToolbarContainer != null)
    {
      i = localToolbarContainer.getView().getId();
      localObject2 = new RelativeLayout.LayoutParams(-1, -2);
      ((RelativeLayout.LayoutParams)localObject2).addRule(10);
      ((RelativeLayout)localObject1).addView(localToolbarContainer.getView(), (ViewGroup.LayoutParams)localObject2);
      localObject2 = new RelativeLayout.LayoutParams(-1, -2);
      ((RelativeLayout.LayoutParams)localObject2).addRule(3, i);
      ((RelativeLayout)localObject1).addView(localToolbarContainer.getShadowView(), (ViewGroup.LayoutParams)localObject2);
    }
    Object localObject2 = (Container)mPageComponent.getBottomComponent();
    int j = 0;
    if (localObject2 != null)
    {
      j = ((Container)localObject2).getView().getId();
      localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
      localLayoutParams.addRule(12);
      ((RelativeLayout)localObject1).addView(((Container)localObject2).getView(), localLayoutParams);
      localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
      localLayoutParams.addRule(2, j);
      ((RelativeLayout)localObject1).addView(((Container)localObject2).getShadowView(), localLayoutParams);
    }
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -2);
    alignWithParent = true;
    if ((localToolbarContainer != null) && (localToolbarContainer.isTransparent())) {
      localLayoutParams.addRule(10);
    }
    for (;;)
    {
      if (localObject2 != null)
      {
        if (((Container)localObject2).isTransparent()) {
          localLayoutParams.addRule(12);
        }
        localLayoutParams.addRule(2, j);
      }
      ((RelativeLayout)localObject1).addView(appView, 0, localLayoutParams);
      if (Build.VERSION.SDK_INT != 15) {
        break;
      }
      root.setLayerType(1, null);
      return;
      localLayoutParams.addRule(3, i);
    }
  }
  
  protected String buildCurrentUriHtml()
    throws IOException
  {
    String str2 = AssetUtils.assetToString(this, getCurrentUriWithoutOptions());
    String str1 = str2;
    if (UrlUtil.isMonacaUri(this, currentMonacaUri.getOriginalUrl()))
    {
      str1 = str2;
      if (currentMonacaUri.hasQueryParams()) {
        str1 = currentMonacaUri.getQueryParamsContainingHtml(str2);
      }
    }
    return str1;
  }
  
  protected JSONObject createDisplayInfo()
  {
    JSONObject localJSONObject = new JSONObject();
    Object localObject = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
    localObject = getWindowManager().getDefaultDisplay();
    try
    {
      localJSONObject.put(getString(R.string.width), ((Display)localObject).getWidth());
      localJSONObject.put(getString(R.string.height), ((Display)localObject).getHeight());
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return localJSONObject;
  }
  
  protected Intent createIntentForNextPage(String paramString, TransitionParams paramTransitionParams)
  {
    Intent localIntent = new Intent(this, getClass());
    localIntent.putExtra(URL_PARAM_NAME, UrlUtil.getResolvedUrl(paramString));
    if (paramTransitionParams != null) {
      localIntent.putExtra(TRANSITION_PARAM_NAME, paramTransitionParams);
    }
    return localIntent;
  }
  
  protected WebViewClient createWebViewClient(MonacaPageActivity paramMonacaPageActivity, CordovaWebView paramCordovaWebView)
  {
    if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() < 11) {
      return new MonacaPageGingerbreadWebViewClient(paramMonacaPageActivity, paramCordovaWebView);
    }
    return new MonacaPageHoneyCombWebViewClient(paramMonacaPageActivity, paramCordovaWebView);
  }
  
  public void dismissPage()
  {
    int i = MonacaApplication.getPages().size();
    finish();
    if (i > 1) {
      overridePendingTransition(R.anim.monaca_dialog_close_enter, R.anim.monaca_dialog_close_exit);
    }
  }
  
  public void finishActivityFromChild(Activity paramActivity, int paramInt)
  {
    super.finishActivityFromChild(paramActivity, paramInt);
  }
  
  public void finishFromChild(Activity paramActivity)
  {
    MyLog.e(TAG, "finish from child. child class " + paramActivity.getClass().getSimpleName());
    super.finishFromChild(paramActivity);
  }
  
  public String getAppWWWPath()
  {
    return getApplicationInfodataDir + getString(R.string.slash) + getString(R.string.www_slash);
  }
  
  public String getCurrentHtml()
  {
    return mCurrentHtml;
  }
  
  public MonacaURI getCurrentMonacaUri()
  {
    return currentMonacaUri;
  }
  
  public String getCurrentUriWithoutOptions()
  {
    return currentMonacaUri.getUrlWithoutOptions();
  }
  
  protected String getHomeUrl(JSONObject paramJSONObject)
  {
    String str = getString(R.string.asset_url) + getString(R.string.relative_index_path);
    if (paramJSONObject == null) {}
    while (paramJSONObject.optString(getString(R.string.url), "").equals("")) {
      return str;
    }
    return getCurrentUriWithoutOptions() + getString(R.string.relative_parent_path) + paramJSONObject.optString(getString(R.string.url));
  }
  
  public JSONObject getInfoForJavaScript()
  {
    return infoForJavaScript;
  }
  
  protected Drawable getSplashDrawable()
    throws IOException
  {
    return Drawable.createFromStream(getResources().getAssets().open(MonacaSScreenActivity.SPLASH_IMAGE_PATH), "splash_default");
  }
  
  public JSONObject getStyle(String paramString)
  {
    if (mPageComponent.getComponentIDsMap().containsKey(paramString)) {
      return ((Component)mPageComponent.getComponentIDsMap().get(paramString)).getStyle();
    }
    return null;
  }
  
  protected String getUIFile(String paramString)
    throws IOException
  {
    InputStream localInputStream = null;
    if (paramString == null) {
      return "";
    }
    if (paramString.startsWith(getString(R.string.asset_url)))
    {
      localInputStream = LocalFileBootloader.openAsset(getApplicationContext(), paramString.substring("file:///android_asset/".length()));
      paramString = new InputStreamReader(localInputStream);
    }
    for (;;)
    {
      StringWriter localStringWriter = new StringWriter();
      char[] arrayOfChar = new char['Ѐ'];
      try
      {
        for (;;)
        {
          int i = paramString.read(arrayOfChar);
          if (i == -1) {
            break;
          }
          localStringWriter.write(arrayOfChar, 0, i);
        }
        if (!paramString.startsWith(getString(R.string.file_scheme))) {
          break label155;
        }
      }
      finally
      {
        paramString.close();
        if (localInputStream != null) {
          localInputStream.close();
        }
      }
      paramString = new FileReader(new File(new File(paramString.substring(7)).getCanonicalPath()));
      continue;
      label155:
      localInputStream = InputStreamLoader.loadAssetFile(this, paramString);
      paramString = new InputStreamReader(localInputStream, getString(R.string.encoding));
    }
    paramString.close();
    if (localInputStream != null) {
      localInputStream.close();
    }
    return localObject.toString();
  }
  
  protected JSONObject getUIJSON(String paramString)
  {
    try
    {
      paramString = getUIFile(UrlUtil.getUIFileUrl(paramString));
      return null;
    }
    catch (IOException paramString)
    {
      try
      {
        paramString = new JSONObject(paramString);
        return paramString;
      }
      catch (JSONException paramString)
      {
        paramString.printStackTrace();
        UIUtil.reportJSONParseError(getApplicationContext(), paramString.getMessage());
      }
      paramString = paramString;
      return null;
    }
  }
  
  public UIContext getUiContext()
  {
    return uiContext;
  }
  
  public void goHomeAsync(JSONObject paramJSONObject)
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        loadUri(val$homeUrl, false);
      }
    });
  }
  
  public boolean hasBackButtonEventer()
  {
    return (mPageComponent != null) && (mPageComponent.getBackButtonEventer() != null);
  }
  
  public boolean hasOnTapBackButtonAction()
  {
    return (mPageComponent != null) && (mPageComponent.eventer != null) && (mPageComponent.eventer.hasOnTapBackButtonAction());
  }
  
  @TargetApi(11)
  public void init()
  {
    MonacaWebView localMonacaWebView = new MonacaWebView(this);
    if (Build.VERSION.SDK_INT == 15) {
      localMonacaWebView.setLayerType(1, null);
    }
    if (uiContext.getSettings().forceDisableWebviewGPU) {}
    try
    {
      localMonacaWebView.getClass().getMethod(getString(R.string.method_setlayertype), new Class[] { Integer.TYPE, Paint.class }).invoke(localMonacaWebView, new Object[] { Integer.valueOf(1), null });
      localMonacaWebView.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
      init(localMonacaWebView, (CordovaWebViewClient)createWebViewClient(this, localMonacaWebView), new MonacaChromeClient(this, localMonacaWebView));
      initMonaca();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void initMonaca()
  {
    appView.setFocusable(true);
    appView.setFocusableInTouchMode(true);
    loadUrl("INITIALIZATION");
    root.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        try
        {
          int i = ((WindowManager)getSystemService("window")).getDefaultDisplay().getHeight();
          int j = root.getHeight();
          infoForJavaScript.put(getString(R.string.info_statusbar_height), i - j);
          return;
        }
        catch (JSONException localJSONException) {}
      }
    });
    appView.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        switch (paramAnonymousMotionEvent.getAction())
        {
        }
        for (;;)
        {
          return false;
          if (!paramAnonymousView.hasFocus()) {
            paramAnonymousView.requestFocus();
          }
        }
      }
    });
  }
  
  protected boolean isIndex()
  {
    return pageIndex == MonacaApplication.getPages().size() - 1;
  }
  
  protected boolean isInitializationMessage(int paramInt, String paramString1, String paramString2)
  {
    return (paramInt == -6) && (paramString1.contains(MonacaWebView.INITIALIZATION_DESCRIPTION)) && (paramString2.startsWith(MonacaWebView.INITIALIZATION_MADIATOR));
  }
  
  protected void loadBackground(Configuration paramConfiguration)
  {
    String str;
    if ((transitionParams != null) && (transitionParams.hasBackgroundImage().booleanValue()))
    {
      str = getString(R.string.www_slash) + UIContext.getPreferredPath(transitionParams.backgroundImagePath);
      if (!AssetUtils.existsAsset(this, str)) {
        break label98;
      }
    }
    for (;;)
    {
      try
      {
        background = new BackgroundDrawable(BitmapFactory.decodeStream(LocalFileBootloader.openAsset(getApplicationContext(), str)), getWindowManager().getDefaultDisplay(), orientation);
        return;
      }
      catch (Exception paramConfiguration)
      {
        label98:
        MyLog.e(TAG, paramConfiguration.getMessage());
      }
      str = getString(R.string.www_slash) + transitionParams.backgroundImagePath;
    }
  }
  
  protected void loadLayoutInformation()
  {
    appView.loadUrl(getString(R.string.script_loadlayoutinfo) + infoForJavaScript.toString());
  }
  
  protected void loadParams()
  {
    Object localObject = getIntent();
    transitionParams = ((TransitionParams)((Intent)localObject).getSerializableExtra(TRANSITION_PARAM_NAME));
    if (transitionParams == null) {
      transitionParams = TransitionParams.createDefaultParams(getRequestedOrientation());
    }
    if (((Intent)localObject).hasExtra(URL_PARAM_NAME)) {}
    for (localObject = ((Intent)localObject).getStringExtra(URL_PARAM_NAME);; localObject = getString(R.string.asset_url) + getString(R.string.relative_index_path))
    {
      if (shouldLoadExtractedIndex()) {
        localObject = getString(R.string.file_scheme) + LocalFileBootloader.getFullPath(getContext(), getString(R.string.relative_index_path));
      }
      setCurrentUri((String)localObject);
      return;
    }
  }
  
  public void loadUiFile(String paramString)
  {
    paramString = getUIJSON(paramString);
    if (paramString != null) {}
    try
    {
      mPageComponent = new PageComponent(uiContext, paramString);
      applyUiToView();
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
      paramString = new LogItem(TimeStamp.getCurrentTimeStamp(), LogItem.Source.SYSTEM, LogItem.LogLevel.ERROR, getString(R.string.nc_report_header) + paramString.getMessage(), "", 0);
      MyLog.sendBroadcastDebugLog(getContext(), paramString);
    }
  }
  
  public void loadUri(String paramString, boolean paramBoolean)
  {
    setCurrentUri(paramString);
    if (getCurrentUriWithoutOptions().equalsIgnoreCase(getString(R.string.notfound_asset_url)))
    {
      show404Page(null);
      return;
    }
    if (!paramBoolean)
    {
      mPageComponent = null;
      loadUiFile(getCurrentUriWithoutOptions());
    }
    try
    {
      mCurrentHtml = buildCurrentUriHtml();
      appView.loadDataWithBaseURL(getCurrentUriWithoutOptions(), mCurrentHtml, getString(R.string.mine_type), getString(R.string.mine_type), getCurrentUriWithoutOptions());
      return;
    }
    catch (IOException localIOException)
    {
      if (paramString.startsWith("file://"))
      {
        show404Page(paramString);
        return;
      }
      appView.setBackgroundColor(0);
      loadLayoutInformation();
      appView.loadUrl(currentMonacaUri.getOriginalUrl());
      appView.clearView();
      appView.invalidate();
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 3333)
    {
      triggerOnReactivate();
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (background != null)
    {
      loadBackground(paramConfiguration);
      if (background != null) {
        background.invalidateSelf();
      }
    }
    uiContext.fireOnRotateListeners(orientation);
    appView.invalidate();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    getWindow().setSoftInputMode(3);
    mApp = ((MonacaApplication)getApplication());
    registerReceiver(pushReceiver, new IntentFilter(MonacaNotifActivity.ACTION_RECEIVED_PUSH));
    prepare();
    if (Build.VERSION.SDK_INT > 16) {
      getWindow().setFlags(16777216, 16777216);
    }
    super.onCreate(paramBundle);
    getWindow().clearFlags(2048);
    if (MonacaApplication.getPages().size() == 1)
    {
      init();
      loadUri(currentMonacaUri.getOriginalUrl(), false);
      if (transitionParams.animationType != TransitionParams.TransitionAnimationType.MODAL) {
        break label164;
      }
      overridePendingTransition(R.anim.monaca_dialog_open_enter, R.anim.monaca_dialog_open_exit);
    }
    label164:
    do
    {
      return;
      init();
      loadUiFile(getCurrentUriWithoutOptions());
      handler.postDelayed(new Runnable()
      {
        public void run()
        {
          loadUri(currentMonacaUri.getOriginalUrl(), true);
        }
      }, 100L);
      break;
      if (transitionParams.animationType == TransitionParams.TransitionAnimationType.SLIDE_LEFT)
      {
        overridePendingTransition(R.anim.monaca_slide_open_enter, R.anim.monaca_slide_open_exit);
        return;
      }
      if (transitionParams.animationType == TransitionParams.TransitionAnimationType.SLIDE_RIGHT)
      {
        overridePendingTransition(R.anim.monaca_slide_right_open_enter, R.anim.monaca_slide_right_open_exit);
        return;
      }
    } while (transitionParams.animationType != TransitionParams.TransitionAnimationType.NONE);
    overridePendingTransition(R.anim.monaca_none, R.anim.monaca_none);
  }
  
  public void onDestroy()
  {
    onDestroyMonacaCaller();
    super.onDestroy();
  }
  
  protected void onDestroyMonaca()
  {
    isCapableForTransition = false;
    unregisterReceiver(pushReceiver);
    appView.setBackgroundDrawable(null);
    root.setBackgroundDrawable(null);
    removeMonacaSplash();
    MonacaApplication.removePage(this);
    unregisterReceiver(closePageReceiver);
    if (background != null)
    {
      background.setCallback(null);
      background = null;
    }
    if (mPageComponent != null)
    {
      mPageComponent.getComponentIDsMap().clear();
      mPageComponent = null;
    }
    appView.setBackgroundDrawable(null);
    root.setBackgroundDrawable(null);
    closePageReceiver = null;
    root.removeView(appView);
    appView.stopLoading();
    appView.setWebViewClient(null);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (hasOnTapBackButtonAction()) {
        mPageComponent.eventer.onTapBackButton();
      }
      for (;;)
      {
        return true;
        if (hasBackButtonEventer())
        {
          mPageComponent.getBackButtonEventer().onTap();
        }
        else
        {
          if (appView.isBackButtonBound()) {
            return super.onKeyDown(paramInt, paramKeyEvent);
          }
          popPage();
        }
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && ((hasBackButtonEventer()) || (hasOnTapBackButtonAction()))) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void onLoadResource(WebView paramWebView, String paramString) {}
  
  public void onPageFinished(View paramView, String paramString)
  {
    requestJStoProcessMessages();
    processMonacaReady(paramString);
  }
  
  public void onPageStarted(View paramView, String paramString)
  {
    paramView = appView.getLayoutParams();
    width = -1;
    height = -1;
    appView.setLayoutParams(paramView);
  }
  
  protected void onPause()
  {
    super.onPause();
    removeMonacaSplash();
    mApp.hideMonacaSpinnerDialog();
    if (isFinishing()) {
      onDestroyMonacaCaller();
    }
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    MenuRepresentation localMenuRepresentation;
    if (mPageComponent != null)
    {
      paramMenu.clear();
      localMenuRepresentation = MonacaApplication.findMenuRepresentation(mPageComponent.menuName);
      if (localMenuRepresentation != null) {
        localMenuRepresentation.configureMenu(uiContext, paramMenu);
      }
    }
    do
    {
      return true;
      paramMenu.clear();
      localMenuRepresentation = MonacaApplication.findMenuRepresentation("default");
    } while (localMenuRepresentation == null);
    localMenuRepresentation.configureMenu(uiContext, paramMenu);
    return true;
  }
  
  public void onReceivedError(int paramInt, String paramString1, String paramString2)
  {
    if (isInitializationMessage(paramInt, paramString1, paramString2)) {
      return;
    }
    super.onReceivedError(paramInt, paramString1, paramString2);
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2) {}
  
  protected void onRestart()
  {
    super.onRestart();
    loadBackground(getResources().getConfiguration());
    if (background != null) {
      background.invalidateSelf();
    }
  }
  
  protected void onResume()
  {
    try
    {
      WebView.class.getMethod(getString(R.string.method_onresume), new Class[0]).invoke(this, new Object[0]);
      isCapableForTransition = true;
      mApp.showMonacaSpinnerDialogIfAny();
      super.onResume();
      root.postInvalidate();
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    unloadBackground();
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean)
    {
      BenchmarkTimer.mark(getString(R.string.visible));
      BenchmarkTimer.finish();
      requestJStoProcessMessages();
    }
  }
  
  public void popPage()
  {
    int i = MonacaApplication.getPages().size();
    finish();
    if (i > 1)
    {
      if (transitionParams.animationType != TransitionParams.TransitionAnimationType.MODAL) {
        break label42;
      }
      overridePendingTransition(R.anim.monaca_dialog_close_enter, R.anim.monaca_dialog_close_exit);
    }
    label42:
    do
    {
      return;
      if (transitionParams.animationType == TransitionParams.TransitionAnimationType.SLIDE_LEFT)
      {
        overridePendingTransition(R.anim.monaca_slide_close_enter, R.anim.monaca_slide_close_exit);
        return;
      }
      if (transitionParams.animationType == TransitionParams.TransitionAnimationType.SLIDE_RIGHT)
      {
        overridePendingTransition(R.anim.monaca_slide_right_close_enter, R.anim.monaca_slide_right_close_exit);
        return;
      }
    } while (transitionParams.animationType != TransitionParams.TransitionAnimationType.NONE);
    overridePendingTransition(R.anim.monaca_none, R.anim.monaca_none);
  }
  
  public void popPageAsync(final TransitionParams paramTransitionParams)
  {
    handler.postAtFrontOfQueue(new Runnable()
    {
      public void run()
      {
        if (paramTransitionParamsanimationType == TransitionParams.TransitionAnimationType.POP)
        {
          _popPage();
          return;
        }
        if (paramTransitionParamsanimationType == TransitionParams.TransitionAnimationType.DISMISS)
        {
          dismissPage();
          return;
        }
        _popPage();
      }
    });
  }
  
  protected void prepare()
  {
    Object localObject = getIntent().getExtras();
    if (localObject != null)
    {
      localObject = ((Bundle)localObject).getSerializable("get_pushdata_key");
      if (localObject != null) {
        pushData = ((GCMPushDataset)localObject);
      }
    }
    loadParams();
    MonacaApplication.addPage(this);
    pageIndex = (MonacaApplication.getPages().size() - 1);
    localObject = mApp.getAppJsonSetting();
    boolean bool = false;
    if (localObject != null) {
      bool = ((AppJsonSetting)localObject).getAutoHide();
    }
    if ((pageIndex == 0) && (!bool)) {
      showMonacaSplash();
    }
    registerReceiver(closePageReceiver, ClosePageIntent.createIntentFilter());
    uiContext = new UIContext(getCurrentUriWithoutOptions(), this);
    if (transitionParams.animationType == TransitionParams.TransitionAnimationType.NONE) {}
    for (;;)
    {
      try
      {
        infoForJavaScript.put(getString(R.string.info_display), createDisplayInfo());
        return;
      }
      catch (JSONException localJSONException)
      {
        throw new RuntimeException(localJSONException);
      }
      if (transitionParams.animationType == TransitionParams.TransitionAnimationType.MODAL) {
        setTheme(R.style.MonacaDialogTheme);
      } else if (transitionParams.animationType == TransitionParams.TransitionAnimationType.SLIDE_LEFT) {
        setTheme(R.style.MonacaSlideTheme);
      }
    }
  }
  
  protected void processMonacaReady(String paramString)
  {
    if ((pushData != null) && (UrlUtil.isMonacaUri(this, paramString)))
    {
      sendPushToWebView(pushData);
      pushData = null;
    }
  }
  
  public void push404Page(String paramString)
  {
    paramString = new Intent(this, getClass());
    paramString.putExtra(URL_PARAM_NAME, getString(R.string.notfound_asset_url));
    TransitionParams localTransitionParams = TransitionParams.from(new JSONObject(), getString(R.string.transition_anim_none));
    paramString.putExtra(TRANSITION_PARAM_NAME, localTransitionParams);
    startActivity(paramString);
    finish();
  }
  
  public void pushPageAsync(final String paramString, final TransitionParams paramTransitionParams)
  {
    paramString = getCurrentUriWithoutOptions() + getString(R.string.relative_parent_path) + paramString;
    BenchmarkTimer.start();
    BenchmarkTimer.mark(getString(R.string.bench_pushpage_async));
    handler.postAtFrontOfQueue(new Runnable()
    {
      public void run()
      {
        BenchmarkTimer.mark(getString(R.string.bench_pushpage_async_run));
        pushPageWithIntent(paramString, paramTransitionParams);
      }
    });
  }
  
  public void pushPageWithIntent(String paramString, TransitionParams paramTransitionParams)
  {
    if (isCapableForTransition)
    {
      paramString = createIntentForNextPage(paramString, paramTransitionParams);
      isCapableForTransition = false;
      startActivityForResult(paramString, 3333);
      if (paramTransitionParams.needsToClearStack()) {
        new Handler().postDelayed(new Runnable()
        {
          public void run()
          {
            finish();
          }
        }, 500L);
      }
    }
  }
  
  public void reload()
  {
    appView.stopLoading();
    loadUri(getCurrentUriWithoutOptions(), false);
  }
  
  public void removeMonacaSplash()
  {
    if ((monacaSplashDialog != null) && (monacaSplashDialog.isShowing()))
    {
      monacaSplashDialog.dismiss();
      monacaSplashDialog = null;
    }
  }
  
  protected void sendPushToWebView(GCMPushDataset paramGCMPushDataset)
  {
    appView.loadUrl(getString(R.string.script_trigger_monaca_cloud_pushsend_forward) + paramGCMPushDataset.getExtraJSONString() + getString(R.string.script_trigger_monaca_cloud_pushsend_backward));
  }
  
  public void setCurrentUri(String paramString)
  {
    currentMonacaUri = new MonacaURI(paramString);
    uiContext = new UIContext(getCurrentUriWithoutOptions(), this);
  }
  
  public void setupBackground(Drawable paramDrawable)
  {
    appView.setBackgroundColor(0);
    if (paramDrawable != null)
    {
      if (appView != null) {
        appView.setBackgroundDrawable(paramDrawable);
      }
      if (root != null)
      {
        root.setBackgroundDrawable(paramDrawable);
        if (root.getParent() == null) {
          setContentView(root);
        }
      }
    }
    while (appView == null) {
      return;
    }
    appView.setBackgroundResource(17170443);
  }
  
  protected boolean shouldLoadExtractedIndex()
  {
    return (!getIntent().hasExtra(URL_PARAM_NAME)) && ((mApp.getAppJsonSetting().shouldExtractAssets()) || (mApp.needToUseBootloader()));
  }
  
  public void show404Page(String paramString)
  {
    try
    {
      paramString = IOUtils.toString(getResources().openRawResource(R.raw.error404));
      appView.loadDataWithBaseURL(getString(R.string.notfound_raw_url), paramString, getString(R.string.mine_type), getString(R.string.encoding), null);
      return;
    }
    catch (IOException paramString)
    {
      MyLog.e(TAG, paramString.getMessage());
    }
  }
  
  public void showMonacaSplash()
  {
    runOnUiThread(new Runnable()
    {
      public void run()
      {
        Object localObject = jdField_this.getWindowManager().getDefaultDisplay();
        FrameLayout localFrameLayout = new FrameLayout(jdField_this.getActivity());
        localFrameLayout.setMinimumHeight(((Display)localObject).getHeight());
        localFrameLayout.setMinimumWidth(((Display)localObject).getWidth());
        localFrameLayout.setBackgroundColor(mApp.getAppJsonSetting().getSplashBackgroundColor());
        localFrameLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, 0.0F));
        try
        {
          localObject = new ImageView(MonacaPageActivity.this);
          ((ImageView)localObject).setImageDrawable(jdField_this.getSplashDrawable());
          ((ImageView)localObject).setScaleType(ImageView.ScaleType.FIT_CENTER);
          localFrameLayout.addView((View)localObject);
          monacaSplashDialog = new Dialog(MonacaPageActivity.this, 16973840);
          if ((getWindow().getAttributes().flags & 0x400) == 1024) {
            monacaSplashDialog.getWindow().setFlags(1024, 1024);
          }
          monacaSplashDialog.setContentView(localFrameLayout);
          monacaSplashDialog.setCancelable(false);
          monacaSplashDialog.show();
          return;
        }
        catch (IOException localIOException)
        {
          for (;;)
          {
            MyLog.e(MonacaPageActivity.TAG, localIOException.getMessage());
          }
        }
      }
    });
  }
  
  protected void unloadBackground()
  {
    if (background != null)
    {
      appView.setBackgroundDrawable(null);
      root.setBackgroundDrawable(null);
      background.setCallback(null);
      background = null;
      System.gc();
    }
  }
  
  public void updateStyle(UpdateStyleQuery paramUpdateStyleQuery)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramUpdateStyleQuery);
    updateStyleBulkily(localArrayList);
  }
  
  public void updateStyleBulkily(final List<UpdateStyleQuery> paramList)
  {
    handler.post(new Runnable()
    {
      public void run()
      {
        Iterator localIterator = paramList.iterator();
        if (localIterator.hasNext())
        {
          UpdateStyleQuery localUpdateStyleQuery = (UpdateStyleQuery)localIterator.next();
          int i = 0;
          while (i < ids.length())
          {
            Object localObject = ids.optString(i, "");
            if ((mPageComponent != null) && (mPageComponent.getComponentIDsMap() != null) && (mPageComponent.getComponentIDsMap().containsKey(localObject)))
            {
              localObject = (Component)mPageComponent.getComponentIDsMap().get(localObject);
              if (localObject == null) {}
            }
            try
            {
              ((Component)localObject).updateStyle(style);
              i += 1;
            }
            catch (NativeUIException localNativeUIException)
            {
              for (;;)
              {
                localNativeUIException.printStackTrace();
              }
            }
          }
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaPageActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */