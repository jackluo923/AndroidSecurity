package com.inmobi.androidsdk;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.carb.CARB;
import com.inmobi.androidsdk.impl.ConfigException;
import com.inmobi.androidsdk.impl.ConnBroadcastReciever;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.UserInfo;
import com.inmobi.androidsdk.impl.imai.IMAIController;
import com.inmobi.androidsdk.impl.net.HttpRequestCallback;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.androidsdk.impl.net.RequestResponseManager.ActionType;
import com.inmobi.commons.AnimationType;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.internal.WrapperFunctions;
import com.inmobi.commons.metric.Logger;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.IMWebViewListener;
import com.inmobi.re.container.IMWebView.ViewState;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

public final class BannerView
  extends RelativeLayout
{
  public static final int INMOBI_AD_UNIT_120X600 = 13;
  public static final int INMOBI_AD_UNIT_300X250 = 10;
  public static final int INMOBI_AD_UNIT_320X48 = 9;
  public static final int INMOBI_AD_UNIT_320X50 = 15;
  public static final int INMOBI_AD_UNIT_468X60 = 12;
  public static final int INMOBI_AD_UNIT_728X90 = 11;
  public static final String INMOBI_INTERNAL_TAG = "ref-__in__rt";
  public static final String INMOBI_REF_TAG = "ref-tag";
  private static ConnBroadcastReciever a = null;
  private boolean A;
  private BannerView.d B = new BannerView.d(this);
  private Animation.AnimationListener C = new d(this);
  private HttpRequestCallback D = new c(this);
  private IMWebView.IMWebViewListener E = new b(this);
  private boolean F = true;
  private IMWebView b;
  private IMWebView c;
  private IMWebView d;
  private Activity e;
  private boolean f = true;
  private UserInfo g;
  private AtomicBoolean h = new AtomicBoolean();
  private AtomicBoolean i = new AtomicBoolean();
  private Animation j;
  private Animation k;
  private String l = null;
  private String m = null;
  private BannerViewListener n;
  private AdRequest o = new AdRequest();
  private String p;
  private int q;
  private long r = -1L;
  private long s = 0L;
  private long t = 0L;
  private boolean u = true;
  private AnimationType v = AnimationType.ROTATE_HORIZONTAL_AXIS;
  private boolean w = true;
  private g x;
  private String y = "http://i.w.inmobi.com/showad.asm";
  private RequestResponseManager z;
  
  public BannerView(Activity paramActivity, int paramInt, String paramString)
  {
    this(paramActivity);
    a(paramActivity, paramInt, paramString);
  }
  
  public BannerView(Activity paramActivity, int paramInt, String paramString, long paramLong)
  {
    this(paramActivity);
    r = paramLong;
    a(paramActivity, paramInt, paramString);
  }
  
  private BannerView(Context paramContext)
  {
    super(paramContext);
  }
  
  public BannerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (paramAttributeSet == null)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Missing attributes in xml layout of IMAdview ");
      return;
    }
    String str = paramAttributeSet.getAttributeValue(null, "appId");
    int i1 = paramAttributeSet.getAttributeIntValue(null, "adSize", -1);
    paramAttributeSet = paramAttributeSet.getAttributeValue(null, "slotId");
    if (paramAttributeSet != null) {
      r = Long.parseLong(paramAttributeSet);
    }
    a((Activity)paramContext, i1, str);
  }
  
  private void a(int paramInt)
  {
    if (paramInt < 0) {
      Log.debug("[InMobi]-[Network]-4.4.1", "Invalid Ad Size. Please provide a valid Ad Size. If Ad Size is declared in the layout XML, please provide a valid 'adSize' attribute in the 'com.inmobi.androidsdk.IMAdView' tag of layout XML. For example, adSize=\"yourAdSize\"");
    }
  }
  
  private void a(int paramInt, AdRequest.ErrorCode paramErrorCode)
  {
    if (!F) {
      e.runOnUiThread(new BannerView.b(this));
    }
    if (!w) {
      Log.debug("[InMobi]-[Network]-4.4.1", "IMAdView not sending callback because the view is not added to any window.");
    }
    while (n == null) {
      return;
    }
    e.runOnUiThread(new BannerView.a(this, paramInt, paramErrorCode));
  }
  
  private void a(Activity paramActivity, int paramInt, String paramString)
  {
    try
    {
      SDKUtil.validateAdConfiguration(paramActivity);
      InternalSDKUtil.getUserAgent(paramActivity.getApplicationContext());
      a(paramInt);
      p = paramString;
      q = paramInt;
      e = SDKUtil.getRootActivity(paramActivity);
      IMWebView.setIMAIController(IMAIController.class);
      InternalSDKUtil.printPublisherTestId();
      if (b == null)
      {
        b = new IMWebView(e, E, false, false);
        if (!F) {
          b.disableHardwareAcceleration();
        }
        b.addJavascriptInterface(new IMAIController(b), "imaiController");
      }
      if (c == null)
      {
        c = new IMWebView(e, E, false, false);
        if (!F) {
          c.disableHardwareAcceleration();
        }
        paramActivity = new RelativeLayout.LayoutParams(-1, -1);
        d = c;
        addView(c, paramActivity);
        c.addJavascriptInterface(new IMAIController(c), "imaiController");
      }
      d();
      x = new g(this, C);
      if (a == null) {
        a = new ConnBroadcastReciever();
      }
      e.getApplicationContext().registerReceiver(a, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
      return;
    }
    catch (ConfigException localConfigException)
    {
      for (;;)
      {
        Log.internal("[InMobi]-[Network]-4.4.1", "IMConfigException occured while initializing interstitial while validating adView", localConfigException);
      }
    }
  }
  
  private void a(String paramString)
  {
    if (paramString != null)
    {
      if (Build.VERSION.SDK_INT <= 8) {
        paramString.replaceAll("%", "%25");
      }
      if (i()) {
        if (b == null)
        {
          b = new IMWebView(e, E, false, false);
          if (!F) {
            b.disableHardwareAcceleration();
          }
        }
      }
      for (IMWebView localIMWebView = b;; localIMWebView = c)
      {
        localIMWebView.addJavascriptInterface(new IMAIController(localIMWebView), "imaiController");
        localIMWebView.requestOnPageFinishedCallback(B.obtainMessage(101));
        s = System.currentTimeMillis();
        B.sendEmptyMessageDelayed(108, Initializer.getConfigParams().getRenderTimeOut());
        localIMWebView.resetMraid();
        localIMWebView.loadDataWithBaseURL("", paramString, "text/html", null, null);
        return;
        if (c == null)
        {
          c = new IMWebView(e, E, false, false);
          if (!F) {
            c.disableHardwareAcceleration();
          }
        }
      }
    }
    a(false);
    Log.debug("[InMobi]-[Network]-4.4.1", "Cannot load Ad. Invalid Ad Response");
    a(101, AdRequest.ErrorCode.INTERNAL_ERROR);
  }
  
  private void a(boolean paramBoolean)
  {
    h.set(paramBoolean);
  }
  
  private void b(boolean paramBoolean)
  {
    i.set(paramBoolean);
  }
  
  private void c()
  {
    int i2 = 320;
    int i1 = 0;
    float f1 = e.getResources().getDisplayMetrics().density;
    for (;;)
    {
      try
      {
        switch (q)
        {
        case 9: 
          if ((i2 != 0) && (i1 != 0))
          {
            i2 = (int)(i2 * f1);
            i1 = (int)(i1 * f1);
            getLayoutParamsheight = i1;
            getLayoutParamswidth = i2;
            setLayoutParams(getLayoutParams());
          }
          return;
        }
      }
      catch (Exception localException)
      {
        Log.internal("[InMobi]-[Network]-4.4.1", "Cannot set default size for adview", localException);
        return;
      }
      i1 = 48;
      continue;
      i2 = 300;
      i1 = 250;
      continue;
      i2 = 729;
      i1 = 90;
      continue;
      i2 = 468;
      i1 = 60;
      continue;
      i2 = 120;
      i1 = 600;
      continue;
      i1 = 50;
      continue;
      i2 = 0;
    }
  }
  
  private void c(boolean paramBoolean)
  {
    f = paramBoolean;
    if (paramBoolean)
    {
      b.deinit();
      b = null;
      return;
    }
    c.deinit();
    c = null;
  }
  
  private void d()
  {
    if (g == null)
    {
      g = new UserInfo(e);
      Object localObject = new DisplayMetrics();
      e.getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject);
      float f1 = density;
      localObject = ((WindowManager)e.getSystemService("window")).getDefaultDisplay();
      int i1 = (int)(WrapperFunctions.getDisplayWidth((Display)localObject) / f1);
      int i2 = (int)(WrapperFunctions.getDisplayHeight((Display)localObject) / f1);
      g.setScreenDensity(String.valueOf(f1));
      g.setScreenSize(i1 + "X" + i2);
    }
    try
    {
      if ((b != null) && (g.getPhoneDefaultUserAgent().equals(""))) {
        g.setPhoneDefaultUserAgent(InternalSDKUtil.getUserAgent(e.getApplicationContext()));
      }
      g.setAdUnitSlot(String.valueOf(q));
      if (r != -1L) {
        g.setSlotId(Long.toString(r));
      }
      g.updateInfo(p, o);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "Exception occured while setting user agent" + localException);
      }
    }
  }
  
  /* Error */
  private void e()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: invokevirtual 540	com/inmobi/androidsdk/BannerView:removeAllViews	()V
    //   6: aload_0
    //   7: invokespecial 337	com/inmobi/androidsdk/BannerView:i	()Z
    //   10: ifeq +61 -> 71
    //   13: new 274	android/widget/RelativeLayout$LayoutParams
    //   16: dup
    //   17: iconst_m1
    //   18: iconst_m1
    //   19: invokespecial 277	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   22: astore_1
    //   23: aload_0
    //   24: aload_0
    //   25: getfield 196	com/inmobi/androidsdk/BannerView:b	Lcom/inmobi/re/container/IMWebView;
    //   28: putfield 279	com/inmobi/androidsdk/BannerView:d	Lcom/inmobi/re/container/IMWebView;
    //   31: aload_0
    //   32: aload_0
    //   33: getfield 196	com/inmobi/androidsdk/BannerView:b	Lcom/inmobi/re/container/IMWebView;
    //   36: aload_1
    //   37: invokevirtual 283	com/inmobi/androidsdk/BannerView:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   40: aload_0
    //   41: invokespecial 337	com/inmobi/androidsdk/BannerView:i	()Z
    //   44: ifne +5 -> 49
    //   47: iconst_1
    //   48: istore_2
    //   49: aload_0
    //   50: iload_2
    //   51: invokespecial 537	com/inmobi/androidsdk/BannerView:c	(Z)V
    //   54: aload_0
    //   55: iconst_0
    //   56: invokespecial 320	com/inmobi/androidsdk/BannerView:a	(Z)V
    //   59: aload_0
    //   60: invokespecial 542	com/inmobi/androidsdk/BannerView:j	()V
    //   63: aload_0
    //   64: bipush 100
    //   66: aconst_null
    //   67: invokespecial 316	com/inmobi/androidsdk/BannerView:a	(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    //   70: return
    //   71: new 274	android/widget/RelativeLayout$LayoutParams
    //   74: dup
    //   75: iconst_m1
    //   76: iconst_m1
    //   77: invokespecial 277	android/widget/RelativeLayout$LayoutParams:<init>	(II)V
    //   80: astore_1
    //   81: aload_0
    //   82: aload_0
    //   83: getfield 272	com/inmobi/androidsdk/BannerView:c	Lcom/inmobi/re/container/IMWebView;
    //   86: putfield 279	com/inmobi/androidsdk/BannerView:d	Lcom/inmobi/re/container/IMWebView;
    //   89: aload_0
    //   90: aload_0
    //   91: getfield 272	com/inmobi/androidsdk/BannerView:c	Lcom/inmobi/re/container/IMWebView;
    //   94: aload_1
    //   95: invokevirtual 283	com/inmobi/androidsdk/BannerView:addView	(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    //   98: goto -58 -> 40
    //   101: astore_1
    //   102: ldc -98
    //   104: ldc_w 544
    //   107: aload_1
    //   108: invokestatic 546	com/inmobi/commons/internal/Log:debug	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   111: aload_0
    //   112: bipush 100
    //   114: aconst_null
    //   115: invokespecial 316	com/inmobi/androidsdk/BannerView:a	(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    //   118: return
    //   119: astore_1
    //   120: aload_0
    //   121: bipush 100
    //   123: aconst_null
    //   124: invokespecial 316	com/inmobi/androidsdk/BannerView:a	(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    //   127: aload_1
    //   128: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	129	0	this	BannerView
    //   22	73	1	localLayoutParams	RelativeLayout.LayoutParams
    //   101	7	1	localException	Exception
    //   119	9	1	localObject	Object
    //   1	50	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	40	101	java/lang/Exception
    //   40	47	101	java/lang/Exception
    //   49	63	101	java/lang/Exception
    //   71	98	101	java/lang/Exception
    //   2	40	119	finally
    //   40	47	119	finally
    //   49	63	119	finally
    //   71	98	119	finally
    //   102	111	119	finally
  }
  
  private boolean f()
  {
    if (q < 0)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Invalid Ad Size. Please provide a valid adSize.");
      return false;
    }
    return true;
  }
  
  private boolean g()
  {
    return h.get();
  }
  
  private boolean h()
  {
    if (i.get()) {
      return true;
    }
    if (i()) {}
    for (IMWebView localIMWebView = c;; localIMWebView = b)
    {
      String str = localIMWebView.getState();
      Log.debug("[InMobi]-[Network]-4.4.1", "Current Ad State: " + str);
      if ((!IMWebView.ViewState.EXPANDED.toString().equalsIgnoreCase(str)) && (!IMWebView.ViewState.RESIZED.toString().equalsIgnoreCase(str)) && (!IMWebView.ViewState.RESIZING.toString().equalsIgnoreCase(str)) && (!IMWebView.ViewState.EXPANDING.toString().equalsIgnoreCase(str))) {
        break;
      }
      Log.debug("[InMobi]-[Network]-4.4.1", "Current Ad State is neither default nor loading. New ad will not be shown.");
      return true;
    }
    if (localIMWebView.isBusy())
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "New ad will not be shown because the present ad is busy. Eg. Video/audio is playing, etc.");
      return true;
    }
    return false;
  }
  
  private boolean i()
  {
    return f;
  }
  
  private void j()
  {
    try
    {
      if (c != null) {
        c.setBackgroundColor(0);
      }
      if (b != null) {
        b.setBackgroundColor(0);
      }
      return;
    }
    catch (Exception localException)
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "Error setNormalBGColor", localException);
    }
  }
  
  final Animation a()
  {
    return j;
  }
  
  final void a(Animation paramAnimation)
  {
    j = paramAnimation;
  }
  
  final Animation b()
  {
    return k;
  }
  
  final void b(Animation paramAnimation)
  {
    k = paramAnimation;
  }
  
  public final void destroy()
  {
    try
    {
      if (d != null) {
        d.destroy();
      }
      d = null;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "Unable to destroy webview, or it has been destroyed already.");
      }
    }
  }
  
  public final void disableHardwareAcceleration()
  {
    F = false;
    if (d != null) {
      d.disableHardwareAcceleration();
    }
  }
  
  public final int getAdSize()
  {
    return q;
  }
  
  public final RelativeLayout.LayoutParams getAdViewPosition()
  {
    int[] arrayOfInt = new int[2];
    RelativeLayout.LayoutParams localLayoutParams;
    if ((d == null) || (d.getLayoutParams() == null) || (d.getParent() == this))
    {
      localLayoutParams = new RelativeLayout.LayoutParams(getLayoutParams());
      width = getWidth();
      height = getHeight();
      getLocationOnScreen(arrayOfInt);
      leftMargin = arrayOfInt[0];
    }
    for (topMargin = arrayOfInt[1];; topMargin = arrayOfInt[1])
    {
      ((FrameLayout)getRootView().findViewById(16908290)).getLocationOnScreen(arrayOfInt);
      leftMargin -= arrayOfInt[0];
      topMargin -= arrayOfInt[1];
      rightMargin = 0;
      bottomMargin = 0;
      return localLayoutParams;
      localLayoutParams = new RelativeLayout.LayoutParams(d.getLayoutParams());
      width = d.getWidth();
      height = d.getHeight();
      d.getLocationOnScreen(arrayOfInt);
      leftMargin = arrayOfInt[0];
    }
  }
  
  public final String getAppId()
  {
    return p;
  }
  
  public final BannerViewListener getIMAdListener()
  {
    return n;
  }
  
  public final AdRequest getIMAdRequest()
  {
    return o;
  }
  
  public final long getSlotId()
  {
    return r;
  }
  
  public final boolean isModal()
  {
    if (d != null) {
      return d.isModal();
    }
    return false;
  }
  
  public final void loadNewAd()
  {
    for (;;)
    {
      try
      {
        z = new RequestResponseManager();
        A = Initializer.getLogger().startNewSample();
        InternalSDKUtil.printPublisherTestId();
        Log.debug("[InMobi]-[Network]-4.4.1", " >>>> Start loading new Ad <<<<");
        try
        {
          if (!InternalSDKUtil.checkNetworkAvailibility(e.getApplicationContext()))
          {
            a(101, AdRequest.ErrorCode.NETWORK_ERROR);
            return;
          }
          if (g())
          {
            a(101, AdRequest.ErrorCode.AD_DOWNLOAD_IN_PROGRESS);
            continue;
          }
        }
        catch (Exception localException)
        {
          Log.debug("[InMobi]-[Network]-4.4.1", "Error in loading ad ", localException);
          continue;
        }
        if (!h()) {
          break label115;
        }
      }
      finally {}
      a(101, AdRequest.ErrorCode.AD_CLICK_IN_PROGRESS);
      continue;
      label115:
      if (!f())
      {
        a(101, AdRequest.ErrorCode.INVALID_REQUEST);
      }
      else
      {
        CARB.getInstance().startCarb();
        a(true);
        d();
        t = System.currentTimeMillis();
        B.sendEmptyMessageDelayed(107, Initializer.getConfigParams().getFetchTimeOut());
        z.asyncRequestSecuredAd(g, RequestResponseManager.ActionType.AdRequest, y, D);
      }
    }
  }
  
  public final void loadNewAd(AdRequest paramAdRequest)
  {
    if (paramAdRequest != null) {
      o = paramAdRequest;
    }
    loadNewAd();
  }
  
  protected final void onAttachedToWindow()
  {
    Log.debug("[InMobi]-[Network]-4.4.1", "onAttachedToWindow");
    w = true;
    c();
  }
  
  protected final void onDetachedFromWindow()
  {
    Log.debug("[InMobi]-[Network]-4.4.1", "onDetatchedFromWindow");
    w = false;
    if (i()) {}
    for (IMWebView localIMWebView = c;; localIMWebView = b)
    {
      if (localIMWebView != null) {
        localIMWebView.deinit();
      }
      return;
    }
  }
  
  protected final void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (paramInt == 0) {}
    try
    {
      RequestResponseManager localRequestResponseManager = new RequestResponseManager();
      localRequestResponseManager.init();
      localRequestResponseManager.processClick(e.getApplicationContext(), null);
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception ping in background", localException);
    }
  }
  
  @Deprecated
  public final void setAdBackgroundColor(String paramString) {}
  
  @Deprecated
  public final void setAdBackgroundGradientColor(String paramString1, String paramString2) {}
  
  public final void setAdServerUrl(String paramString)
  {
    y = paramString;
  }
  
  public final void setAdSize(int paramInt)
  {
    a(paramInt);
    q = paramInt;
  }
  
  @Deprecated
  public final void setAdTextColor(String paramString) {}
  
  public final void setAnimationType(AnimationType paramAnimationType)
  {
    v = paramAnimationType;
  }
  
  public final void setAppId(String paramString)
  {
    p = paramString;
  }
  
  public final void setIMAdListener(BannerViewListener paramBannerViewListener)
  {
    n = paramBannerViewListener;
  }
  
  public final void setIMAdRequest(AdRequest paramAdRequest)
  {
    o = paramAdRequest;
  }
  
  public final void setRefTagParam(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null)) {
      Log.debug("[InMobi]-[Network]-4.4.1", "Key or Value cannot be null");
    }
    do
    {
      return;
      if ((paramString1.trim().equals("")) || (paramString2.trim().equals("")))
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "Key or Value cannot be empty");
        return;
      }
    } while (g == null);
    g.setRefTagKey(paramString1.toLowerCase(Locale.ENGLISH));
    g.setRefTagValue(paramString2.toLowerCase(Locale.ENGLISH));
  }
  
  public final void setSlotId(long paramLong)
  {
    r = paramLong;
  }
  
  public final void stopLoading()
  {
    if (B.hasMessages(107))
    {
      B.removeMessages(107);
      B.sendEmptyMessage(107);
    }
    while (!B.hasMessages(108)) {
      return;
    }
    B.removeMessages(108);
    B.sendEmptyMessage(108);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.BannerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */