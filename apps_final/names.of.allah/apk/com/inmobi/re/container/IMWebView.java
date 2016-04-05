package com.inmobi.re.container;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask.Status;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.re.configs.ConfigParams;
import com.inmobi.re.configs.Initializer;
import com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController;
import com.inmobi.re.container.mraidimpl.MRAIDBasic;
import com.inmobi.re.container.mraidimpl.MRAIDExpandController;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;
import com.inmobi.re.container.mraidimpl.MRAIDResizeController;
import com.inmobi.re.controller.JSController.Dimensions;
import com.inmobi.re.controller.JSController.ExpandProperties;
import com.inmobi.re.controller.JSController.PlayerProperties;
import com.inmobi.re.controller.JSController.ResizeProperties;
import com.inmobi.re.controller.JSUtilityController;
import com.inmobi.re.controller.util.AVPlayer;
import com.inmobi.re.controller.util.AVPlayer.playerState;
import java.io.File;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

public class IMWebView
  extends WebView
  implements Serializable
{
  private static Class<?> D = null;
  public static final String DIMENSIONS = "expand_dimensions";
  public static final String EXPAND_URL = "expand_url";
  protected static final int IMWEBVIEW_INTERSTITIAL_ID = 117;
  public static final String PLAYER_PROPERTIES = "player_properties";
  private static int[] d = { 16843039, 16843040 };
  private static final long serialVersionUID = 7098506283154473782L;
  public static boolean userInitiatedClose = false;
  private ViewParent A;
  private int B;
  private boolean C = false;
  private WebViewClient E = new b(this);
  private WebChromeClient F = new a(this);
  private MediaPlayer.OnCompletionListener G = new c(this);
  private boolean H = true;
  double a = -1.0D;
  public AtomicBoolean acqMutexcPos = new AtomicBoolean(true);
  public AtomicBoolean acqMutexdPos = new AtomicBoolean(true);
  AtomicBoolean b = new AtomicBoolean(false);
  IMWebView.InstantVideoCallbackCallback c = null;
  public JSONObject curPosition;
  public JSONObject defPosition;
  public AtomicBoolean doNotFireVisibilityChanged = new AtomicBoolean(false);
  private boolean e;
  private JSUtilityController f;
  private float g;
  private int h;
  private int i;
  public AtomicBoolean isMutexAquired = new AtomicBoolean(false);
  public boolean isTablet = false;
  private IMWebView.ViewState j = IMWebView.ViewState.LOADING;
  private VideoView k;
  private View l;
  private WebChromeClient.CustomViewCallback m = null;
  public MRAIDAudioVideoController mAudioVideoController;
  public MRAIDExpandController mExpandController;
  public MRAIDInterstitialController mInterstitialController;
  public boolean mIsInterstitialAd = false;
  public boolean mIsViewable = false;
  public IMWebView.IMWebViewListener mListener;
  public MRAIDBasic mMraidBasic;
  public IMWebView mOriginalWebviewForExpandUrl = null;
  public MRAIDResizeController mResizeController;
  public boolean mWebViewIsBrowserActivity = false;
  protected boolean mraidLoaded;
  public Object mutex = new Object();
  public Object mutexcPos = new Object();
  public Object mutexdPos = new Object();
  private ViewGroup n;
  private FrameLayout o;
  private ArrayList<IMWebView.i> p = new ArrayList();
  public int publisherOrientation;
  private boolean q = false;
  private boolean r = false;
  private boolean s;
  private Message t;
  private Message u;
  private Activity v;
  private WebViewClient w;
  public String webviewUserAgent;
  private IMWebView.l x;
  private ArrayList<String> y = new ArrayList();
  private AtomicBoolean z = new AtomicBoolean();
  
  public IMWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    v = ((Activity)paramContext);
    a();
    getContext().obtainStyledAttributes(paramAttributeSet, d).recycle();
  }
  
  public IMWebView(Context paramContext, IMWebView.IMWebViewListener paramIMWebViewListener)
  {
    super(paramContext);
    mListener = paramIMWebViewListener;
    v = ((Activity)paramContext);
    a();
  }
  
  public IMWebView(Context paramContext, IMWebView.IMWebViewListener paramIMWebViewListener, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramContext);
    v = ((Activity)paramContext);
    mIsInterstitialAd = paramBoolean1;
    mWebViewIsBrowserActivity = paramBoolean2;
    if (mIsInterstitialAd) {
      setId(117);
    }
    mListener = paramIMWebViewListener;
    a();
  }
  
  private int a(Activity paramActivity)
  {
    Iterator localIterator = paramActivity.getPackageManager().queryIntentActivities(new Intent(paramActivity, paramActivity.getClass()), 65536).iterator();
    ResolveInfo localResolveInfo;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      localResolveInfo = (ResolveInfo)localIterator.next();
    } while (!activityInfo.name.contentEquals(paramActivity.getClass().getName()));
    for (paramActivity = localResolveInfo;; paramActivity = null) {
      return activityInfo.configChanges;
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled", "NewApi"})
  private void a()
  {
    userInitiatedClose = false;
    setScrollContainer(false);
    setVerticalScrollBarEnabled(false);
    setHorizontalScrollBarEnabled(false);
    webviewUserAgent = getSettings().getUserAgentString();
    InternalSDKUtil.getUserAgent(v);
    setBackgroundColor(Initializer.getConfigParams().getWebviewBgColor());
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    if (Build.VERSION.SDK_INT >= 17) {
      getSettings().setMediaPlaybackRequiresUserGesture(true);
    }
    g = v.getResources().getDisplayMetrics().density;
    e = false;
    getSettings().setJavaScriptEnabled(true);
    getSettings().setGeolocationEnabled(true);
    f = new JSUtilityController(this, getContext());
    addJavascriptInterface(f, "utilityController");
    setWebViewClient(E);
    setWebChromeClient(F);
    mExpandController = new MRAIDExpandController(this, v);
    mResizeController = new MRAIDResizeController(this, v);
    mMraidBasic = new MRAIDBasic(this, v);
    mInterstitialController = new MRAIDInterstitialController(this, v);
    mAudioVideoController = new MRAIDAudioVideoController(this);
    x = new IMWebView.l(this, mMraidBasic, mExpandController, mInterstitialController, mAudioVideoController, mResizeController);
    mExpandController.mSensorDisplay = ((WindowManager)v.getSystemService("window")).getDefaultDisplay();
    mAudioVideoController.videoValidateWidth = v.getResources().getDisplayMetrics().widthPixels;
    try
    {
      addJavascriptInterface(D.getDeclaredConstructor(new Class[] { IMWebView.class }).newInstance(new Object[] { this }), "imaiController");
      f.setWebViewClosed(false);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "Error adding js interface imai controller");
      }
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    injectJavaScript("window.mraid.broadcastEvent('sizeChange'," + paramInt1 + "," + paramInt2 + ");");
  }
  
  private void a(View paramView, View.OnKeyListener paramOnKeyListener)
  {
    paramView.setOnKeyListener(paramOnKeyListener);
    paramView.setFocusable(true);
    paramView.setFocusableInTouchMode(true);
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int i1 = 0;
      int i2 = paramView.getChildCount();
      while (i1 < i2)
      {
        a(paramView.getChildAt(i1), paramOnKeyListener);
        i1 += 1;
      }
    }
  }
  
  private void a(View paramView, View.OnTouchListener paramOnTouchListener)
  {
    paramView.setOnTouchListener(paramOnTouchListener);
    paramView.setFocusable(true);
    paramView.setFocusableInTouchMode(true);
    if ((paramView instanceof ViewGroup))
    {
      paramView = (ViewGroup)paramView;
      int i1 = 0;
      int i2 = paramView.getChildCount();
      while (i1 < i2)
      {
        a(paramView.getChildAt(i1), paramOnTouchListener);
        i1 += 1;
      }
    }
  }
  
  @TargetApi(8)
  private void a(SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(v);
    localBuilder.setPositiveButton("Continue", new IMWebView.d(this, paramSslErrorHandler));
    localBuilder.setNegativeButton("Go Back", new IMWebView.k(this, paramSslErrorHandler));
    if (Build.VERSION.SDK_INT >= 14) {
      localBuilder.setNeutralButton("Open Browser", new IMWebView.e(this, paramSslError));
    }
    localBuilder.setTitle("Security Warning");
    localBuilder.setMessage("There are problems with the security certificate for this site.");
    paramSslErrorHandler = localBuilder.create();
    try
    {
      paramSslErrorHandler.show();
      return;
    }
    catch (Exception paramSslErrorHandler)
    {
      com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "Dialog could not be shown due to an exception.", paramSslErrorHandler);
    }
  }
  
  private void a(String paramString)
  {
    paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    paramString.addFlags(268435456);
    v.startActivity(paramString);
    fireOnLeaveApplication();
  }
  
  private void a(boolean paramBoolean)
  {
    com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "Viewable:" + paramBoolean);
    injectJavaScript("window.mraid.broadcastEvent('viewableChange'," + isViewable() + ");");
  }
  
  private void b()
  {
    com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> initStates");
    j = IMWebView.ViewState.LOADING;
    z.set(false);
  }
  
  private void c()
  {
    if (j == IMWebView.ViewState.EXPANDED) {
      mExpandController.closeExpanded();
    }
    invalidate();
    f.stopAllListeners();
    resetLayout();
  }
  
  private void d()
  {
    if (l == null) {
      return;
    }
    if (m != null) {
      m.onCustomViewHidden();
    }
    m = null;
    if (l.getParent() != null) {
      ((ViewGroup)l.getParent()).removeView(l);
    }
    l = null;
  }
  
  private boolean e()
  {
    return b.get();
  }
  
  public static void setIMAIController(Class<?> paramClass)
  {
    D = paramClass;
  }
  
  public void addJavascriptObject(Object paramObject, String paramString)
  {
    addJavascriptInterface(paramObject, paramString);
  }
  
  public void cancelLoad()
  {
    z.set(true);
  }
  
  public void cancelSaveContent(String paramString)
  {
    int i1;
    if (p != null) {
      i1 = 0;
    }
    for (;;)
    {
      if (i1 < p.size())
      {
        IMWebView.i locali = (IMWebView.i)p.get(i1);
        if ((locali.a().equals(paramString)) && (locali.getStatus() == AsyncTask.Status.RUNNING)) {
          locali.cancel(true);
        }
      }
      else
      {
        return;
      }
      i1 += 1;
    }
  }
  
  public void clearView()
  {
    c();
    super.clearView();
  }
  
  public void close()
  {
    try
    {
      removeSaveContentDir();
      f.setWebViewClosed(true);
      if (!x.hasMessages(1001)) {
        x.sendEmptyMessage(1001);
      }
      return;
    }
    catch (Exception localException)
    {
      com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "Exception closing webview. Webview not initialized properly", localException);
    }
  }
  
  public void closeExpanded()
  {
    x.sendEmptyMessage(1005);
  }
  
  protected void closeOpened(View paramView)
  {
    ((ViewGroup)((Activity)getContext()).getWindow().getDecorView()).removeView(paramView);
    requestLayout();
  }
  
  public void closeResized()
  {
    x.sendEmptyMessage(1031);
  }
  
  public void closeVideo(String paramString)
  {
    AVPlayer localAVPlayer = mAudioVideoController.getVideoPlayer(paramString);
    if (localAVPlayer == null)
    {
      raiseError("Invalid property ID", "closeVideo");
      return;
    }
    if (localAVPlayer.getState() == AVPlayer.playerState.RELEASED)
    {
      raiseError("Invalid player state", "closeVideo");
      return;
    }
    mAudioVideoController.videoPlayerList.remove(paramString);
    paramString = x.obtainMessage(1012);
    obj = localAVPlayer;
    x.sendMessage(paramString);
  }
  
  public void deinit()
  {
    if ((getStateVariable() == IMWebView.ViewState.EXPANDED) || (getStateVariable() == IMWebView.ViewState.EXPANDING)) {
      close();
    }
  }
  
  public void destroy()
  {
    com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView: Destroy called.");
    close();
    postInHandler(new IMWebView.g(this));
  }
  
  public void disableHardwareAcceleration()
  {
    H = false;
    com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "disableHardwareAcceleration called.");
    if (Build.VERSION.SDK_INT >= 14)
    {
      WrapperFunctions.disableHardwareAccl(this);
      mExpandController.disableEnableHardwareAccelerationForExpandWithURLView();
    }
  }
  
  public void doHidePlayers()
  {
    x.sendEmptyMessage(1023);
  }
  
  public void expand(String paramString, JSController.ExpandProperties paramExpandProperties)
  {
    setState(IMWebView.ViewState.EXPANDING);
    mExpandController.mIsExpandUrlValid = false;
    isMutexAquired.set(true);
    Message localMessage = x.obtainMessage(1004);
    Bundle localBundle = new Bundle();
    localBundle.putString("expand_url", paramString);
    localMessage.setData(localBundle);
    mExpandController.expandProperties = paramExpandProperties;
    com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "Dimensions: {" + mExpandController.expandProperties.x + " ," + mExpandController.expandProperties.y + " ," + mExpandController.expandProperties.width + " ," + mExpandController.expandProperties.height + "}");
    mExpandController.tempExpPropsLock = mExpandController.expandProperties.lockOrientation;
    x.sendMessage(localMessage);
  }
  
  public void fireOnLeaveApplication()
  {
    if (mListener != null) {
      mListener.onLeaveApplication();
    }
  }
  
  public void fireOnShowAdScreen()
  {
    if ((mListener != null) && (getStateVariable() == IMWebView.ViewState.DEFAULT) && (!mIsInterstitialAd))
    {
      IMBrowserActivity.requestOnAdDismiss(x.obtainMessage(1028));
      mListener.onShowAdScreen();
    }
  }
  
  public Activity getActivity()
  {
    return v;
  }
  
  public int getAudioVolume(String paramString)
  {
    paramString = mAudioVideoController.getCurrentAudioPlayer(paramString);
    if (paramString == null)
    {
      raiseError("Invalid property ID", "getAudioVolume");
      return -1;
    }
    return paramString.getVolume();
  }
  
  public String getCurrentRotation(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "-1";
    case 0: 
      return "0";
    case 1: 
      return "90";
    case 2: 
      return "180";
    }
    return "270";
  }
  
  public boolean getCustomClose()
  {
    return r;
  }
  
  public float getDensity()
  {
    return g;
  }
  
  public int getDismissMessage()
  {
    return 1028;
  }
  
  public Activity getExpandedActivity()
  {
    return v;
  }
  
  public int getIntegerCurrentRotation()
  {
    int i1 = InternalSDKUtil.getDisplayRotation(((WindowManager)v.getSystemService("window")).getDefaultDisplay());
    int i2 = i1;
    if (InternalSDKUtil.isDefOrientationLandscape(i1, v.getResources().getDisplayMetrics().widthPixels, v.getResources().getDisplayMetrics().heightPixels))
    {
      i2 = i1 + 1;
      i1 = i2;
      if (i2 > 3) {
        i1 = 0;
      }
      i2 = i1;
      if (InternalSDKUtil.isTablet(v.getApplicationContext()))
      {
        isTablet = true;
        i2 = i1;
      }
    }
    return i2;
  }
  
  public double getLastGoodKnownMicValue()
  {
    return a;
  }
  
  public ArrayList<String> getMRAIDUrls()
  {
    return y;
  }
  
  public int getOriginalIndex()
  {
    return B;
  }
  
  public ViewParent getOriginalParent()
  {
    if (A == null) {
      saveOriginalViewParent();
    }
    return A;
  }
  
  public String getPlacementType()
  {
    if (mIsInterstitialAd) {
      return "interstitial";
    }
    return "inline";
  }
  
  public String getSize()
  {
    return "{ width: " + (int)(getWidth() / g) + ", height: " + (int)(getHeight() / g) + "}";
  }
  
  public String getState()
  {
    return j.toString().toLowerCase(Locale.ENGLISH);
  }
  
  public IMWebView.ViewState getStateVariable()
  {
    return j;
  }
  
  public int getVideoVolume(String paramString)
  {
    paramString = mAudioVideoController.getVideoPlayer(paramString);
    if (paramString == null)
    {
      raiseError("Invalid property ID", "getVideoVolume");
      return -1;
    }
    return paramString.getVolume();
  }
  
  public IMWebView.ViewState getViewState()
  {
    return j;
  }
  
  public Handler getWebviewHandler()
  {
    return x;
  }
  
  public void hide()
  {
    x.sendEmptyMessage(1002);
  }
  
  public void hideVideo(String paramString)
  {
    Message localMessage = x.obtainMessage(1013);
    Bundle localBundle = new Bundle();
    localBundle.putString("pid", paramString);
    localMessage.setData(localBundle);
    x.sendMessage(localMessage);
  }
  
  public void incentCompleted(HashMap<Object, Object> paramHashMap)
  {
    Message localMessage = x.obtainMessage(1034);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("incent_ad_map", paramHashMap);
    localMessage.setData(localBundle);
    localMessage.sendToTarget();
  }
  
  public void injectJavaScript(String paramString)
  {
    if (paramString != null) {}
    try
    {
      if (paramString.length() < 400) {
        com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "Injecting JavaScript: " + paramString);
      }
      if (!e()) {
        super.loadUrl("javascript:try{" + paramString + "}catch(e){}");
      }
      return;
    }
    catch (Exception paramString)
    {
      com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "Error injecting javascript ", paramString);
    }
  }
  
  public boolean isAudioMuted(String paramString)
  {
    paramString = mAudioVideoController.getCurrentAudioPlayer(paramString);
    if (paramString == null)
    {
      raiseError("Invalid property ID", "isAudioMuted");
      return false;
    }
    return paramString.isMediaMuted();
  }
  
  public boolean isBusy()
  {
    return q;
  }
  
  public boolean isConfigChangesListed(Activity paramActivity)
  {
    int i2 = Build.VERSION.SDK_INT;
    int i3 = a(paramActivity);
    if (((i3 & 0x10) == 0) || ((i3 & 0x20) == 0) || ((i3 & 0x80) == 0)) {}
    for (int i1 = 0;; i1 = 1)
    {
      if ((i2 >= 13) && (((i3 & 0x400) == 0) || ((i3 & 0x800) == 0))) {}
      for (i2 = 0;; i2 = 1) {
        return (i1 != 0) && (i2 != 0);
      }
    }
  }
  
  public boolean isEnabledHardwareAcceleration()
  {
    return H;
  }
  
  public boolean isExpanded()
  {
    return j == IMWebView.ViewState.EXPANDED;
  }
  
  public boolean isLandscapeSyncOrientation(int paramInt)
  {
    return (paramInt == 1) || (paramInt == 3);
  }
  
  public boolean isModal()
  {
    return (mIsInterstitialAd) || (j == IMWebView.ViewState.EXPANDED);
  }
  
  public boolean isPageFinished()
  {
    return e;
  }
  
  public boolean isPortraitSyncOrientation(int paramInt)
  {
    return (paramInt == 0) || (paramInt == 2);
  }
  
  public boolean isVideoMuted(String paramString)
  {
    paramString = mAudioVideoController.getVideoPlayer(paramString);
    if (paramString == null)
    {
      raiseError("Invalid property ID", "isVideoMuted");
      return false;
    }
    return paramString.isMediaMuted();
  }
  
  public boolean isViewable()
  {
    return mIsViewable;
  }
  
  public void loadData(String paramString1, String paramString2, String paramString3)
  {
    super.loadData(paramString1, paramString2, paramString3);
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    if (j == IMWebView.ViewState.EXPANDED) {
      return;
    }
    b();
    super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  public void loadUrl(String paramString)
  {
    if (j == IMWebView.ViewState.EXPANDED) {
      return;
    }
    b();
    super.loadUrl(paramString);
  }
  
  public void lockExpandOrientation(Activity paramActivity, boolean paramBoolean, String paramString)
  {
    int i1;
    try
    {
      if (!isConfigChangesListed(paramActivity)) {
        return;
      }
      i1 = paramActivity.getRequestedOrientation();
      if ((i1 == 0) || (i1 == 1) || ((Build.VERSION.SDK_INT >= 9) && ((i1 == 8) || (i1 == 9) || (i1 == 6) || (i1 == 7)))) {
        return;
      }
      if (paramBoolean) {
        break label203;
      }
      i1 = getIntegerCurrentRotation();
      mExpandController.initialExpandOrientation = paramActivity.getRequestedOrientation();
      if (paramString.equalsIgnoreCase("portrait"))
      {
        mExpandController.useLockOrient = true;
        paramActivity.setRequestedOrientation(WrapperFunctions.getParamPortraitOrientation(i1));
        return;
      }
    }
    catch (Exception paramActivity)
    {
      com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "Exception handling the orientation ", paramActivity);
      return;
    }
    if (paramString.equalsIgnoreCase("landscape"))
    {
      mExpandController.useLockOrient = true;
      paramActivity.setRequestedOrientation(WrapperFunctions.getParamLandscapeOrientation(i1));
      return;
    }
    mExpandController.useLockOrient = true;
    if (getResourcesgetConfigurationorientation == 2)
    {
      com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "In allowFalse, none mode dev orientation:ORIENTATION_LANDSCAPE");
      paramActivity.setRequestedOrientation(0);
      return;
    }
    com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "In allowFalse, none mode dev orientation:ORIENTATION_PORTRAIT");
    paramActivity.setRequestedOrientation(1);
    return;
    label203:
    if (getResourcesgetConfigurationorientation == 2)
    {
      com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "In allow true,  device orientation:ORIENTATION_LANDSCAPE");
      return;
    }
    com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "In allow true,  device orientation:ORIENTATION_PORTRAIT");
  }
  
  public void mediaPlayerReleased(AVPlayer paramAVPlayer)
  {
    mAudioVideoController.mediaPlayerReleased(paramAVPlayer);
  }
  
  public void muteAudio(String paramString)
  {
    Object localObject = mAudioVideoController.getCurrentAudioPlayer(paramString);
    if (localObject == null)
    {
      raiseError("Invalid property ID", "muteAudio");
      return;
    }
    if (((AVPlayer)localObject).getState() == AVPlayer.playerState.RELEASED)
    {
      raiseError("Invalid player state", "muteAudio");
      return;
    }
    localObject = x.obtainMessage(1019);
    Bundle localBundle = new Bundle();
    localBundle.putString("aplayerref", paramString);
    ((Message)localObject).setData(localBundle);
    ((Message)localObject).sendToTarget();
  }
  
  public void muteVideo(String paramString)
  {
    paramString = mAudioVideoController.getVideoPlayer(paramString);
    if (paramString == null)
    {
      raiseError("Invalid property ID", "muteVideo");
      return;
    }
    if ((paramString.getState() == AVPlayer.playerState.RELEASED) || (paramString.getState() == AVPlayer.playerState.INIT))
    {
      raiseError("Invalid player state", "muteVideo");
      return;
    }
    Message localMessage = x.obtainMessage(1015);
    obj = paramString;
    x.sendMessage(localMessage);
  }
  
  protected void onAttachedToWindow()
  {
    com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> onAttachedToWindow");
    saveOriginalViewParent();
    if (!s)
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      h = height;
      i = width;
      s = true;
    }
    f.registerBroadcastListener();
    super.onAttachedToWindow();
  }
  
  protected void onDetachedFromWindow()
  {
    com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> onDetatchedFromWindow");
    f.stopAllListeners();
    y.clear();
    f.unRegisterBroadcastListener();
    if ((mIsInterstitialAd) && (!mWebViewIsBrowserActivity)) {
      mInterstitialController.handleInterstitialClose();
    }
    super.onDetachedFromWindow();
  }
  
  protected void onIMWebviewVisibilityChanged(boolean paramBoolean)
  {
    if (mIsViewable == paramBoolean) {}
    do
    {
      return;
      mIsViewable = paramBoolean;
    } while (doNotFireVisibilityChanged.get());
    a(paramBoolean);
  }
  
  public void onOrientationEventChange()
  {
    x.sendEmptyMessage(1027);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != 0) && (paramInt2 != 0))
    {
      if (!C) {
        a((int)(paramInt1 / getDensity()), (int)(paramInt2 / getDensity()));
      }
      C = false;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    requestFocus();
    return super.onTouchEvent(paramMotionEvent);
  }
  
  protected void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      onIMWebviewVisibilityChanged(bool);
      if (paramInt != 0) {}
      try
      {
        if (f.supports("vibrate")) {
          ((Vibrator)v.getSystemService("vibrator")).cancel();
        }
        return;
      }
      catch (Exception localException)
      {
        com.inmobi.commons.internal.Log.internal("[InMobi]-[RE]-4.4.1", "Failed to cancel existing vibration", localException);
      }
    }
  }
  
  public void openExternal(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(paramString));
    localIntent.addFlags(268435456);
    try
    {
      getContext().startActivity(localIntent);
      if (mListener != null) {
        mListener.onLeaveApplication();
      }
      return;
    }
    catch (Exception paramString)
    {
      raiseError("Request must specify a valid URL", "openExternal");
    }
  }
  
  public void openURL(String paramString)
  {
    if (!isViewable())
    {
      raiseError("Cannot open URL.Ad is not viewable yet", "openURL");
      return;
    }
    Message localMessage = x.obtainMessage(1024);
    Bundle localBundle = new Bundle();
    localBundle.putString("expand_url", paramString);
    localMessage.setData(localBundle);
    x.sendMessage(localMessage);
  }
  
  public void pageFinishedCallbackForAdCreativeTesting(Message paramMessage)
  {
    u = paramMessage;
  }
  
  public void pauseAudio(String paramString)
  {
    Object localObject = mAudioVideoController.getCurrentAudioPlayer(paramString);
    if (localObject == null) {
      raiseError("Invalid property ID", "pauseAudio");
    }
    do
    {
      return;
      if (((AVPlayer)localObject).getState() != AVPlayer.playerState.PLAYING)
      {
        if ((((AVPlayer)localObject).getState() == AVPlayer.playerState.INIT) && (!((AVPlayer)localObject).isPrepared()))
        {
          ((AVPlayer)localObject).setAutoPlay(false);
          return;
        }
        raiseError("Invalid player state", "pauseAudio");
        return;
      }
    } while (!((AVPlayer)localObject).isPlaying());
    localObject = x.obtainMessage(1010);
    Bundle localBundle = new Bundle();
    localBundle.putString("aplayerref", paramString);
    ((Message)localObject).setData(localBundle);
    ((Message)localObject).sendToTarget();
  }
  
  public void pauseVideo(String paramString)
  {
    Message localMessage = x.obtainMessage(1011);
    Bundle localBundle = new Bundle();
    localBundle.putString("pid", paramString);
    localMessage.setData(localBundle);
    x.sendMessage(localMessage);
  }
  
  public void playAudio(String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString2, String paramString3, String paramString4)
  {
    synchronized (mutex)
    {
      boolean bool = isMutexAquired.get();
      if (bool == true) {}
      try
      {
        mutex.wait();
        if ((!mIsInterstitialAd) && (j != IMWebView.ViewState.EXPANDED))
        {
          raiseError("Cannot play audio.Ad is not in an expanded state", "playAudio");
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "mutex failed ", localInterruptedException);
        }
      }
    }
    if (!isViewable())
    {
      raiseError("Cannot play audio.Ad is not viewable yet", "playAudio");
      return;
    }
    ??? = new JSController.PlayerProperties();
    ((JSController.PlayerProperties)???).setProperties(false, paramBoolean1, paramBoolean2, paramBoolean3, paramString2, paramString3, paramString4);
    paramString2 = new Bundle();
    paramString2.putString("expand_url", paramString1);
    paramString2.putParcelable("player_properties", (Parcelable)???);
    paramString1 = x.obtainMessage(1007);
    paramString1.setData(paramString2);
    x.sendMessage(paramString1);
  }
  
  public void playVideo(String paramString1, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, JSController.Dimensions paramDimensions, String paramString2, String paramString3, String paramString4)
  {
    synchronized (mutex)
    {
      boolean bool = isMutexAquired.get();
      if (bool == true) {}
      try
      {
        mutex.wait();
        if ((!mIsInterstitialAd) && (j != IMWebView.ViewState.EXPANDED))
        {
          raiseError("Cannot play video.Ad is not in an expanded state", "playVideo");
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "mutex failed ", localInterruptedException);
        }
      }
    }
    if (!isViewable())
    {
      raiseError("Cannot play video.Ad is not viewable yet", "playVideo");
      return;
    }
    if ((!mAudioVideoController.videoPlayerList.isEmpty()) && (mAudioVideoController.videoPlayerList.size() >= 5) && (!mAudioVideoController.videoPlayerList.containsKey(paramString4)))
    {
      raiseError("Player Error. Exceeding permissible limit for saved play instances", "playVideo");
      return;
    }
    ??? = x.obtainMessage(1006);
    JSController.PlayerProperties localPlayerProperties = new JSController.PlayerProperties();
    localPlayerProperties.setProperties(paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4, paramString2, paramString3, paramString4);
    paramString2 = new Bundle();
    paramString2.putString("expand_url", paramString1);
    paramString2.putParcelable("player_properties", localPlayerProperties);
    com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "Before validation dimension: (" + x + ", " + y + ", " + width + ", " + height + ")");
    mAudioVideoController.validateVideoDimensions(paramDimensions);
    com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "After validation dimension: (" + x + ", " + y + ", " + width + ", " + height + ")");
    paramString2.putParcelable("expand_dimensions", paramDimensions);
    ((Message)???).setData(paramString2);
    x.sendMessage((Message)???);
  }
  
  public void postInHandler(Runnable paramRunnable)
  {
    x.post(paramRunnable);
  }
  
  public void postInjectJavaScript(String paramString)
  {
    if (paramString != null)
    {
      if (paramString.length() < 400) {
        com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "Injecting JavaScript: " + paramString);
      }
      Message localMessage = x.obtainMessage(1025);
      Bundle localBundle = new Bundle();
      localBundle.putString("injectMessage", paramString);
      localMessage.setData(localBundle);
      localMessage.sendToTarget();
    }
  }
  
  public void raiseCameraPictureCapturedEvent(String paramString, int paramInt1, int paramInt2)
  {
    paramString = "window.mraidview.fireCameraPictureCatpturedEvent('" + paramString + "','" + paramInt1 + "','" + paramInt2 + "')";
    if (v != null) {
      v.runOnUiThread(new IMWebView.c(this, paramString));
    }
  }
  
  public void raiseError(String paramString1, String paramString2)
  {
    Message localMessage = x.obtainMessage(1008);
    Bundle localBundle = new Bundle();
    localBundle.putString("message", paramString1);
    localBundle.putString("action", paramString2);
    localMessage.setData(localBundle);
    x.sendMessage(localMessage);
  }
  
  public void raiseGalleryImageSelectedEvent(String paramString, int paramInt1, int paramInt2)
  {
    paramString = "window.mraidview.fireGalleryImageSelectedEvent('" + paramString + "','" + paramInt1 + "','" + paramInt2 + "')";
    if (v != null) {
      v.runOnUiThread(new IMWebView.j(this, paramString));
    }
  }
  
  public void raiseMicEvent(double paramDouble)
  {
    a = paramDouble;
    String str = "window.mraid.broadcastEvent('micIntensityChange'," + paramDouble + ")";
    if (v != null) {
      v.runOnUiThread(new IMWebView.b(this, str));
    }
  }
  
  public void raiseVibrateCompleteEvent()
  {
    if (v != null) {
      v.runOnUiThread(new IMWebView.a(this));
    }
  }
  
  public void removeSaveContentDir()
  {
    int i2 = 0;
    int i1;
    if (p != null)
    {
      android.util.Log.i("Nilanjana", "list_downloadTask not null");
      i1 = 0;
      while (i1 < p.size())
      {
        localObject = (IMWebView.i)p.get(i1);
        if (((IMWebView.i)localObject).getStatus() == AsyncTask.Status.RUNNING) {
          ((IMWebView.i)localObject).cancel(true);
        }
        i1 += 1;
      }
      p.clear();
      p = null;
    }
    Object localObject = InternalSDKUtil.getContext();
    localObject = new File(((Context)localObject).getExternalFilesDir(null) + "/im_cached_content/");
    if ((((File)localObject).exists()) && (((File)localObject).isDirectory()))
    {
      String[] arrayOfString = ((File)localObject).list();
      i1 = i2;
      while (i1 < arrayOfString.length)
      {
        new File((File)localObject, arrayOfString[i1]).delete();
        i1 += 1;
      }
      ((File)localObject).delete();
    }
  }
  
  public void requestOnInterstitialClosed(Message paramMessage)
  {
    mInterstitialController.mMsgOnInterstitialClosed = paramMessage;
  }
  
  public void requestOnInterstitialShown(Message paramMessage)
  {
    mInterstitialController.mMsgOnInterstitialShown = paramMessage;
  }
  
  public void requestOnPageFinishedCallback(Message paramMessage)
  {
    t = paramMessage;
  }
  
  public void resetLayout()
  {
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    if (s)
    {
      height = h;
      width = i;
    }
    setVisibility(0);
    requestLayout();
  }
  
  public void resetMraid()
  {
    mExpandController.reset();
    mResizeController.reset();
    f.reset();
  }
  
  public void resize(JSController.ResizeProperties paramResizeProperties)
  {
    setState(IMWebView.ViewState.RESIZING);
    isMutexAquired.set(true);
    Message localMessage = x.obtainMessage(1030);
    mResizeController.resizeProperties = paramResizeProperties;
    x.sendMessage(localMessage);
  }
  
  public void saveFile(File paramFile, String paramString1, String paramString2)
  {
    new IMWebView.i(this, paramFile, paramString1, paramString2).execute(new Void[0]);
  }
  
  public void saveOriginalViewParent()
  {
    if (A != null) {}
    do
    {
      return;
      A = getParent();
    } while (A == null);
    int i2 = ((ViewGroup)A).getChildCount();
    int i1 = 0;
    while ((i1 < i2) && (((ViewGroup)A).getChildAt(i1) != this)) {
      i1 += 1;
    }
    B = i1;
  }
  
  public void seekAudio(String paramString, int paramInt)
  {
    paramString = mAudioVideoController.getCurrentAudioPlayer(paramString);
    if (paramString == null)
    {
      raiseError("Invalid property ID", "seekAudio");
      return;
    }
    if (paramString.getState() == AVPlayer.playerState.RELEASED)
    {
      raiseError("Invalid player state", "seekAudio");
      return;
    }
    Message localMessage = x.obtainMessage(1022);
    Bundle localBundle = new Bundle();
    localBundle.putInt("seekaudio", paramInt);
    localMessage.setData(localBundle);
    obj = paramString;
    localMessage.sendToTarget();
  }
  
  public void seekVideo(String paramString, int paramInt)
  {
    paramString = mAudioVideoController.getVideoPlayer(paramString);
    if (paramString == null)
    {
      raiseError("Invalid property ID", "seekVideo");
      return;
    }
    if ((paramString.getState() == AVPlayer.playerState.RELEASED) || (paramString.getState() == AVPlayer.playerState.INIT))
    {
      raiseError("Invalid player state", "seekVideo");
      return;
    }
    Message localMessage = x.obtainMessage(1018);
    Bundle localBundle = new Bundle();
    localBundle.putInt("seek", paramInt);
    localMessage.setData(localBundle);
    obj = paramString;
    x.sendMessage(localMessage);
  }
  
  public void sendToCPHandler()
  {
    x.sendEmptyMessage(1029);
  }
  
  public void sendToDPHandler()
  {
    x.sendEmptyMessage(1032);
  }
  
  public void sendasyncPing(String paramString)
  {
    f.asyncPing(paramString);
  }
  
  public void setActivity(Activity paramActivity)
  {
    v = paramActivity;
  }
  
  public void setAudioVolume(String paramString, int paramInt)
  {
    if (mAudioVideoController.getCurrentAudioPlayer(paramString) == null)
    {
      raiseError("Invalid property ID", "setAudioVolume");
      return;
    }
    Message localMessage = x.obtainMessage(1021);
    Bundle localBundle = new Bundle();
    localBundle.putInt("vol", paramInt);
    localBundle.putString("aplayerref", paramString);
    localMessage.setData(localBundle);
    localMessage.sendToTarget();
  }
  
  public void setBrowserActivity(Activity paramActivity)
  {
    if (paramActivity != null) {
      v = ((IMBrowserActivity)paramActivity);
    }
  }
  
  public void setBusy(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  public void setCallBack(IMWebView.InstantVideoCallbackCallback paramInstantVideoCallbackCallback)
  {
    c = paramInstantVideoCallbackCallback;
  }
  
  public void setCloseButton()
  {
    try
    {
      CustomView localCustomView = (CustomView)((ViewGroup)getRootView()).findViewById(225);
      if (localCustomView != null)
      {
        if (getCustomClose())
        {
          localCustomView.setSwitchInt(CustomView.SwitchIconType.CLOSE_TRANSPARENT);
          localCustomView.invalidate();
          return;
        }
        localCustomView.setSwitchInt(CustomView.SwitchIconType.CLOSE_BUTTON);
        localCustomView.invalidate();
        return;
      }
    }
    catch (Exception localException) {}
  }
  
  public void setCustomClose(boolean paramBoolean)
  {
    r = paramBoolean;
    Message localMessage = x.obtainMessage(1009);
    x.sendMessage(localMessage);
  }
  
  public void setExpandPropertiesForInterstitial(boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    setCustomClose(paramBoolean1);
    mInterstitialController.orientationValueForInterstitial = paramString;
    mInterstitialController.lockOrientationValueForInterstitial = paramBoolean2;
    if (mWebViewIsBrowserActivity) {
      mExpandController.handleOrientationFor2Piece();
    }
    if ((isViewable()) && (mIsInterstitialAd)) {
      x.sendEmptyMessage(1026);
    }
  }
  
  public void setExternalWebViewClient(WebViewClient paramWebViewClient)
  {
    w = paramWebViewClient;
  }
  
  public void setOrientationPropertiesForInterstitial(boolean paramBoolean, String paramString)
  {
    mInterstitialController.orientationValueForInterstitial = paramString;
    mInterstitialController.lockOrientationValueForInterstitial = paramBoolean;
    if (mWebViewIsBrowserActivity) {
      mExpandController.handleOrientationFor2Piece();
    }
    if ((isViewable()) && (mIsInterstitialAd)) {
      x.sendEmptyMessage(1026);
    }
  }
  
  public void setOriginalParent(ViewParent paramViewParent)
  {
    A = paramViewParent;
  }
  
  public void setState(IMWebView.ViewState paramViewState)
  {
    com.inmobi.commons.internal.Log.debug("[InMobi]-[RE]-4.4.1", "State changing from " + j + " to " + paramViewState);
    j = paramViewState;
    if ((paramViewState != IMWebView.ViewState.EXPANDING) && (paramViewState != IMWebView.ViewState.RESIZING)) {
      injectJavaScript("window.mraid.broadcastEvent('stateChange','" + getState() + "');");
    }
  }
  
  public void setVideoVolume(String paramString, int paramInt)
  {
    paramString = mAudioVideoController.getVideoPlayer(paramString);
    if (paramString == null)
    {
      raiseError("Invalid property ID", "setVideoVolume");
      return;
    }
    if (paramString.getState() == AVPlayer.playerState.RELEASED)
    {
      raiseError("Invalid player state", "setVideoVolume");
      return;
    }
    Message localMessage = x.obtainMessage(1017);
    Bundle localBundle = new Bundle();
    localBundle.putInt("volume", paramInt);
    localMessage.setData(localBundle);
    obj = paramString;
    x.sendMessage(localMessage);
  }
  
  public void show()
  {
    x.sendEmptyMessage(1003);
  }
  
  public void showVideo(String paramString)
  {
    Message localMessage = x.obtainMessage(1014);
    Bundle localBundle = new Bundle();
    localBundle.putString("pid", paramString);
    localMessage.setData(localBundle);
    x.sendMessage(localMessage);
  }
  
  public void unMuteAudio(String paramString)
  {
    Object localObject = mAudioVideoController.getCurrentAudioPlayer(paramString);
    if (localObject == null)
    {
      raiseError("Invalid property ID", "unmuteAudio");
      return;
    }
    if (((AVPlayer)localObject).getState() == AVPlayer.playerState.RELEASED)
    {
      raiseError("Invalid player state", "unmuteAudio");
      return;
    }
    localObject = x.obtainMessage(1020);
    Bundle localBundle = new Bundle();
    localBundle.putString("aplayerref", paramString);
    ((Message)localObject).setData(localBundle);
    ((Message)localObject).sendToTarget();
  }
  
  public void unMuteVideo(String paramString)
  {
    paramString = mAudioVideoController.getVideoPlayer(paramString);
    if (paramString == null)
    {
      raiseError("Invalid property ID", "unMuteVideo");
      return;
    }
    if ((paramString.getState() == AVPlayer.playerState.RELEASED) || (paramString.getState() == AVPlayer.playerState.INIT))
    {
      raiseError("Invalid player state", "unMuteVideo");
      return;
    }
    Message localMessage = x.obtainMessage(1016);
    obj = paramString;
    x.sendMessage(localMessage);
  }
  
  public void userInteraction(HashMap<String, String> paramHashMap)
  {
    Message localMessage = x.obtainMessage(1033);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("map", paramHashMap);
    localMessage.setData(localBundle);
    localMessage.sendToTarget();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.IMWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */