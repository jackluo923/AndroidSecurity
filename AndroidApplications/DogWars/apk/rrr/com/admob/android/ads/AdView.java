package com.admob.android.ads;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Interpolator;
import android.widget.RelativeLayout;
import java.util.Timer;

public class AdView
  extends RelativeLayout
{
  private static final String ADMOB_EMULATOR_NOTICE = "http://api.admob.com/v1/pubcode/android_sdk_emulator_notice";
  private static final int ANIMATION_DURATION = 700;
  private static final float ANIMATION_Z_DEPTH_PERCENTAGE = -0.4F;
  public static final int HEIGHT = 48;
  private static boolean checkedForMessages = false;
  private static Handler uiThreadHandler;
  private AdContainer ad;
  private int backgroundColor;
  private boolean hideWhenNoAd;
  private boolean isOnScreen;
  private String keywords;
  private AdView.AdListener listener;
  private int requestInterval;
  private Timer requestIntervalTimer;
  private boolean requestingFreshAd;
  private String searchQuery;
  private int textColor;
  
  static
  {
    boolean bool = false;
    checkedForMessages = bool;
  }
  
  public AdView(Context paramContext)
  {
    this(paramContext, localAttributeSet, i);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, i);
  }
  
  public AdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    isOnScreen = i2;
    setFocusable(bool3);
    int m = 262144;
    setDescendantFocusability(m);
    setClickable(bool3);
    int k = -1;
    int i = -16777216;
    if (paramAttributeSet != null)
    {
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str2 = "http://schemas.android.com/apk/res/";
      localObject = ((StringBuilder)localObject).append(str2);
      str2 = paramContext.getPackageName();
      localObject = ((StringBuilder)localObject).append(str2);
      String str1 = ((StringBuilder)localObject).toString();
      localObject = "testing";
      boolean bool2 = paramAttributeSet.getAttributeBooleanValue(str1, (String)localObject, i2);
      if (bool2) {
        AdManager.setInTestMode(bool2);
      }
      localObject = "textColor";
      int i1 = -1;
      k = paramAttributeSet.getAttributeUnsignedIntValue(str1, (String)localObject, i1);
      localObject = "backgroundColor";
      i1 = -16777216;
      i = paramAttributeSet.getAttributeUnsignedIntValue(str1, (String)localObject, i1);
      localObject = "keywords";
      localObject = paramAttributeSet.getAttributeValue(str1, (String)localObject);
      keywords = ((String)localObject);
      localObject = "refreshInterval";
      int j = paramAttributeSet.getAttributeIntValue(str1, (String)localObject, i2);
      setRequestInterval(j);
      localObject = "isGoneWithoutAd";
      boolean bool4 = isGoneWithoutAd();
      boolean bool1 = paramAttributeSet.getAttributeBooleanValue(str1, (String)localObject, bool4);
      setGoneWithoutAd(bool1);
    }
    setTextColor(k);
    setBackgroundColor(i);
    int n = super.getVisibility();
    if (n == 0) {
      requestFreshAd();
    }
  }
  
  private void applyFadeIn(AdContainer paramAdContainer)
  {
    ad = paramAdContainer;
    boolean bool1 = isOnScreen;
    if (bool1)
    {
      AlphaAnimation localAlphaAnimation = new android/view/animation/AlphaAnimation;
      float f1 = 0.0F;
      float f2 = 1.0F;
      localAlphaAnimation.<init>(f1, f2);
      long l = 233L;
      localAlphaAnimation.setDuration(l);
      localAlphaAnimation.startNow();
      boolean bool2 = true;
      localAlphaAnimation.setFillAfter(bool2);
      AccelerateInterpolator localAccelerateInterpolator = new android/view/animation/AccelerateInterpolator;
      localAccelerateInterpolator.<init>();
      localAlphaAnimation.setInterpolator(localAccelerateInterpolator);
      startAnimation(localAlphaAnimation);
    }
  }
  
  private void applyRotation(AdContainer paramAdContainer)
  {
    boolean bool = true;
    float f3 = 2.0F;
    int i = 8;
    paramAdContainer.setVisibility(i);
    i = getWidth();
    float f1 = i;
    float f5 = f1 / f3;
    int j = getHeight();
    float f2 = j;
    float f6 = f2 / f3;
    f2 = -0.4F;
    int k = getWidth();
    float f4 = k;
    float f7 = f2 * f4;
    Rotate3dAnimation localRotate3dAnimation = new com/admob/android/ads/Rotate3dAnimation;
    f2 = 0.0F;
    f4 = -90.0F;
    localRotate3dAnimation.<init>(f2, f4, f5, f6, f7, bool);
    long l = 700L;
    localRotate3dAnimation.setDuration(l);
    localRotate3dAnimation.setFillAfter(bool);
    Object localObject = new android/view/animation/AccelerateInterpolator;
    ((AccelerateInterpolator)localObject).<init>();
    localRotate3dAnimation.setInterpolator((Interpolator)localObject);
    localObject = new com/admob/android/ads/AdView$3;
    ((AdView.3)localObject).<init>(this, paramAdContainer);
    localRotate3dAnimation.setAnimationListener((Animation.AnimationListener)localObject);
    startAnimation(localRotate3dAnimation);
  }
  
  public int getBackgroundColor()
  {
    int i = backgroundColor;
    return i;
  }
  
  public String getKeywords()
  {
    String str = keywords;
    return str;
  }
  
  public int getRequestInterval()
  {
    int j = requestInterval;
    int i = j / 1000;
    return i;
  }
  
  public String getSearchQuery()
  {
    String str = searchQuery;
    return str;
  }
  
  public int getTextColor()
  {
    int i = textColor;
    return i;
  }
  
  public int getVisibility()
  {
    boolean bool = hideWhenNoAd;
    if (bool)
    {
      bool = hasAd();
      if (bool) {}
    }
    for (int i = 8;; i = super.getVisibility()) {
      return i;
    }
  }
  
  public boolean hasAd()
  {
    AdContainer localAdContainer = ad;
    if (localAdContainer != null) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public boolean isGoneWithoutAd()
  {
    boolean bool = hideWhenNoAd;
    return bool;
  }
  
  /* Error */
  private void manageRequestIntervalTimer(boolean paramBoolean)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: monitorenter
    //   3: iload_1
    //   4: ifeq +82 -> 86
    //   7: aload_0
    //   8: getfield 14	com/admob/android/ads/AdView:requestInterval	I
    //   11: istore_2
    //   12: iload_2
    //   13: ifle +73 -> 86
    //   16: aload_0
    //   17: getfield 373	com/admob/android/ads/AdView:requestIntervalTimer	Ljava/util/Timer;
    //   20: astore_2
    //   21: aload_2
    //   22: ifnonnull +61 -> 83
    //   25: new 101	java/util/Timer
    //   28: astore_2
    //   29: aload_2
    //   30: invokespecial 71	java/util/Timer:<init>	()V
    //   33: aload_0
    //   34: aload_2
    //   35: putfield 373	com/admob/android/ads/AdView:requestIntervalTimer	Ljava/util/Timer;
    //   38: aload_0
    //   39: getfield 373	com/admob/android/ads/AdView:requestIntervalTimer	Ljava/util/Timer;
    //   42: astore_2
    //   43: new 75	com/admob/android/ads/AdView$2
    //   46: astore_3
    //   47: aload_3
    //   48: aload_0
    //   49: invokespecial 377	com/admob/android/ads/AdView$2:<init>	(Lcom/admob/android/ads/AdView;)V
    //   52: aload_0
    //   53: getfield 14	com/admob/android/ads/AdView:requestInterval	I
    //   56: istore 4
    //   58: iload 4
    //   60: i2l
    //   61: lstore 4
    //   63: aload_0
    //   64: getfield 14	com/admob/android/ads/AdView:requestInterval	I
    //   67: istore 6
    //   69: iload 6
    //   71: i2l
    //   72: lstore 6
    //   74: aload_2
    //   75: aload_3
    //   76: lload 4
    //   78: lload 6
    //   80: invokevirtual 162	java/util/Timer:schedule	(Ljava/util/TimerTask;JJ)V
    //   83: aload_0
    //   84: monitorexit
    //   85: return
    //   86: iload_1
    //   87: ifeq +12 -> 99
    //   90: aload_0
    //   91: getfield 14	com/admob/android/ads/AdView:requestInterval	I
    //   94: istore_2
    //   95: iload_2
    //   96: ifne -13 -> 83
    //   99: aload_0
    //   100: getfield 373	com/admob/android/ads/AdView:requestIntervalTimer	Ljava/util/Timer;
    //   103: astore_2
    //   104: aload_2
    //   105: ifnull -22 -> 83
    //   108: aload_0
    //   109: getfield 373	com/admob/android/ads/AdView:requestIntervalTimer	Ljava/util/Timer;
    //   112: astore_2
    //   113: aload_2
    //   114: invokevirtual 105	java/util/Timer:cancel	()V
    //   117: aconst_null
    //   118: astore_2
    //   119: aload_0
    //   120: aload_2
    //   121: putfield 373	com/admob/android/ads/AdView:requestIntervalTimer	Ljava/util/Timer;
    //   124: goto -41 -> 83
    //   127: astore_2
    //   128: aload_0
    //   129: monitorexit
    //   130: aload_2
    //   131: athrow
    //   132: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	this	AdView
    //   0	133	1	paramBoolean	boolean
    //   11	2	2	i	int
    //   20	55	2	localTimer1	Timer
    //   94	2	2	j	int
    //   103	18	2	localTimer2	Timer
    //   127	4	2	localObject	Object
    //   46	30	3	local2	AdView.2
    //   56	3	4	k	int
    //   61	16	4	l1	long
    //   67	3	6	m	int
    //   72	7	6	l2	long
    // Exception table:
    //   from	to	target	type
    //   7	12	127	finally
    //   16	21	127	finally
    //   25	29	127	finally
    //   33	38	127	finally
    //   43	47	127	finally
    //   52	58	127	finally
    //   63	69	127	finally
    //   74	83	127	finally
    //   90	95	127	finally
    //   99	104	127	finally
    //   108	113	127	finally
    //   119	124	127	finally
    //   128	130	127	finally
  }
  
  protected void onAttachedToWindow()
  {
    boolean bool = true;
    isOnScreen = bool;
    super.onAttachedToWindow();
  }
  
  protected void onDetachedFromWindow()
  {
    boolean bool = false;
    isOnScreen = bool;
    super.onDetachedFromWindow();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = getMeasuredWidth();
    int j = 48;
    setMeasuredDimension(i, j);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    manageRequestIntervalTimer(paramBoolean);
  }
  
  public void requestFreshAd()
  {
    boolean bool4 = true;
    Context localContext = getContext();
    String str1 = AdManager.getUserId(localContext);
    if (str1 == null)
    {
      boolean bool1 = checkedForMessages;
      if (!bool1)
      {
        checkedForMessages = bool4;
        retrieveDeveloperMessage(localContext);
      }
    }
    int i = super.getVisibility();
    if (i != 0)
    {
      String str2 = "AdMob SDK";
      String str4 = "Cannot requestFreshAd() when the AdView is not visible.  Call AdView.setVisibility(View.VISIBLE) first.";
      Log.w(str2, str4);
    }
    for (;;)
    {
      return;
      boolean bool2 = requestingFreshAd;
      Object localObject;
      String str5;
      if (bool2)
      {
        String str3 = "AdMob SDK";
        int j = 3;
        boolean bool3 = Log.isLoggable(str3, j);
        if (bool3)
        {
          localObject = "AdMob SDK";
          str5 = "Ignoring requestFreshAd() because we are already getting a fresh ad.";
          Log.d((String)localObject, str5);
        }
      }
      else
      {
        requestingFreshAd = str5;
        localObject = uiThreadHandler;
        if (localObject == null)
        {
          localObject = new android/os/Handler;
          ((Handler)localObject).<init>();
          uiThreadHandler = (Handler)localObject;
        }
        localObject = new com/admob/android/ads/AdView$1;
        ((AdView.1)localObject).<init>(this);
        ((AdView.1)localObject).start();
      }
    }
  }
  
  /* Error */
  private void retrieveDeveloperMessage(Context paramContext)
  {
    // Byte code:
    //   0: nop
    //   1: aconst_null
    //   2: astore 9
    //   4: aconst_null
    //   5: astore 12
    //   7: aconst_null
    //   8: astore 13
    //   10: aload_1
    //   11: aload 12
    //   13: aload 13
    //   15: invokestatic 58	com/admob/android/ads/AdRequester:buildParamString	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   18: astore 8
    //   20: new 365	java/lang/StringBuilder
    //   23: astore 11
    //   25: aload 11
    //   27: invokespecial 209	java/lang/StringBuilder:<init>	()V
    //   30: ldc 70
    //   32: astore 12
    //   34: aload 11
    //   36: aload 12
    //   38: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: pop
    //   42: ldc 41
    //   44: astore 12
    //   46: aload 11
    //   48: aload 12
    //   50: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: pop
    //   54: aload 11
    //   56: aload 8
    //   58: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: pop
    //   62: new 299	java/net/URL
    //   65: astore 4
    //   67: aload 11
    //   69: invokevirtual 249	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   72: astore 12
    //   74: aload 4
    //   76: aload 12
    //   78: invokespecial 31	java/net/URL:<init>	(Ljava/lang/String;)V
    //   81: aload 4
    //   83: invokevirtual 122	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   86: astore_2
    //   87: aload_2
    //   88: invokevirtual 181	java/net/URLConnection:connect	()V
    //   91: new 365	java/lang/StringBuilder
    //   94: astore_3
    //   95: aload_3
    //   96: invokespecial 209	java/lang/StringBuilder:<init>	()V
    //   99: new 6	java/io/BufferedReader
    //   102: astore 10
    //   104: new 30	java/io/InputStreamReader
    //   107: astore 12
    //   109: aload_2
    //   110: invokevirtual 390	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   113: astore 13
    //   115: aload 12
    //   117: aload 13
    //   119: invokespecial 141	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   122: aload 10
    //   124: aload 12
    //   126: invokespecial 428	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   129: aload 10
    //   131: invokevirtual 106	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   134: astore 6
    //   136: aload 6
    //   138: ifnull +30 -> 168
    //   141: aload_3
    //   142: aload 6
    //   144: invokevirtual 220	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: pop
    //   148: goto -19 -> 129
    //   151: astore 12
    //   153: aload 10
    //   155: astore 9
    //   157: aload 9
    //   159: ifnull +8 -> 167
    //   162: aload 9
    //   164: invokevirtual 427	java/io/BufferedReader:close	()V
    //   167: return
    //   168: new 128	org/json/JSONObject
    //   171: astore 5
    //   173: new 343	org/json/JSONTokener
    //   176: astore 12
    //   178: aload_3
    //   179: invokevirtual 249	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: astore 13
    //   184: aload 12
    //   186: aload 13
    //   188: invokespecial 149	org/json/JSONTokener:<init>	(Ljava/lang/String;)V
    //   191: aload 5
    //   193: aload 12
    //   195: invokespecial 240	org/json/JSONObject:<init>	(Lorg/json/JSONTokener;)V
    //   198: ldc 90
    //   200: astore 12
    //   202: aload 5
    //   204: aload 12
    //   206: invokevirtual 381	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   209: astore 7
    //   211: aload 7
    //   213: ifnull +16 -> 229
    //   216: ldc_w 262
    //   219: astore 12
    //   221: aload 12
    //   223: aload 7
    //   225: invokestatic 371	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   228: pop
    //   229: aload 10
    //   231: ifnull +8 -> 239
    //   234: aload 10
    //   236: invokevirtual 427	java/io/BufferedReader:close	()V
    //   239: aload 10
    //   241: astore 9
    //   243: goto -76 -> 167
    //   246: astore 12
    //   248: aload 10
    //   250: astore 9
    //   252: goto -85 -> 167
    //   255: astore 12
    //   257: aload 9
    //   259: ifnull +8 -> 267
    //   262: aload 9
    //   264: invokevirtual 427	java/io/BufferedReader:close	()V
    //   267: aload 12
    //   269: athrow
    //   270: astore 12
    //   272: goto -105 -> 167
    //   275: astore 13
    //   277: goto -10 -> 267
    //   280: astore 12
    //   282: aload 10
    //   284: astore 9
    //   286: goto -29 -> 257
    //   289: astore 12
    //   291: goto -134 -> 157
    //   294: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	295	0	this	AdView
    //   0	295	1	paramContext	Context
    //   86	24	2	localURLConnection	java.net.URLConnection
    //   94	85	3	localStringBuilder1	StringBuilder
    //   65	17	4	localURL	java.net.URL
    //   171	32	5	localJSONObject	org.json.JSONObject
    //   134	9	6	str1	String
    //   209	15	7	str2	String
    //   18	39	8	str3	String
    //   2	283	9	localObject1	Object
    //   102	181	10	localBufferedReader	java.io.BufferedReader
    //   23	45	11	localStringBuilder2	StringBuilder
    //   5	120	12	localObject2	Object
    //   151	1	12	localException1	Exception
    //   176	46	12	localObject3	Object
    //   246	1	12	localException2	Exception
    //   255	13	12	localObject4	Object
    //   270	1	12	localException3	Exception
    //   280	1	12	localObject5	Object
    //   289	1	12	localException4	Exception
    //   8	179	13	localObject6	Object
    //   275	1	13	localException5	Exception
    // Exception table:
    //   from	to	target	type
    //   129	134	151	java/lang/Exception
    //   141	148	151	java/lang/Exception
    //   168	173	151	java/lang/Exception
    //   178	182	151	java/lang/Exception
    //   184	191	151	java/lang/Exception
    //   198	202	151	java/lang/Exception
    //   216	221	151	java/lang/Exception
    //   234	239	246	java/lang/Exception
    //   10	18	255	finally
    //   20	25	255	finally
    //   30	34	255	finally
    //   42	46	255	finally
    //   54	62	255	finally
    //   67	72	255	finally
    //   74	81	255	finally
    //   87	91	255	finally
    //   95	99	255	finally
    //   104	109	255	finally
    //   115	122	255	finally
    //   162	167	270	java/lang/Exception
    //   262	267	275	java/lang/Exception
    //   129	134	280	finally
    //   141	148	280	finally
    //   168	173	280	finally
    //   178	182	280	finally
    //   184	191	280	finally
    //   198	202	280	finally
    //   216	221	280	finally
    //   10	18	289	java/lang/Exception
    //   20	25	289	java/lang/Exception
    //   30	34	289	java/lang/Exception
    //   42	46	289	java/lang/Exception
    //   54	62	289	java/lang/Exception
    //   67	72	289	java/lang/Exception
    //   74	81	289	java/lang/Exception
    //   87	91	289	java/lang/Exception
    //   95	99	289	java/lang/Exception
    //   104	109	289	java/lang/Exception
    //   115	122	289	java/lang/Exception
  }
  
  public void setBackgroundColor(int paramInt)
  {
    int i = -16777216;
    i |= paramInt;
    backgroundColor = i;
    AdContainer localAdContainer = ad;
    if (localAdContainer != null)
    {
      localAdContainer = ad;
      localAdContainer.setBackgroundColor(paramInt);
    }
    invalidate();
  }
  
  public void setGoneWithoutAd(boolean paramBoolean)
  {
    hideWhenNoAd = paramBoolean;
  }
  
  public void setKeywords(String paramString)
  {
    keywords = paramString;
  }
  
  public void setListener(AdView.AdListener paramAdListener)
  {
    try
    {
      listener = paramAdListener;
      return;
    }
    finally {}
  }
  
  public void setRequestInterval(int paramInt)
  {
    int n = 600;
    int m = 15;
    int j = 15;
    int i = 600;
    if (paramInt <= 0)
    {
      paramInt = 0;
      int k = paramInt * 1000;
      requestInterval = k;
      if (paramInt != 0) {
        break label201;
      }
      boolean bool1 = false;
      manageRequestIntervalTimer(bool1);
    }
    for (;;)
    {
      return;
      if (paramInt < m)
      {
        localObject1 = new java/lang/StringBuilder;
        ((StringBuilder)localObject1).<init>();
        localObject2 = "AdView.setRequestInterval(";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject1 = ((StringBuilder)localObject1).append(paramInt);
        localObject2 = ") seconds must be >= ";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject1 = ((StringBuilder)localObject1).append(m);
        localObject1 = ((StringBuilder)localObject1).toString();
        AdManager.clientError((String)localObject1);
        break;
      }
      if (paramInt <= n) {
        break;
      }
      Object localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      Object localObject2 = "AdView.setRequestInterval(";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject1 = ((StringBuilder)localObject1).append(paramInt);
      localObject2 = ") seconds must be <= ";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject1 = ((StringBuilder)localObject1).append(n);
      localObject1 = ((StringBuilder)localObject1).toString();
      AdManager.clientError((String)localObject1);
      break;
      label201:
      localObject1 = "AdMob SDK";
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      String str = "Requesting fresh ads every ";
      localObject2 = ((StringBuilder)localObject2).append(str);
      localObject2 = ((StringBuilder)localObject2).append(paramInt);
      str = " seconds.";
      localObject2 = ((StringBuilder)localObject2).append(str);
      localObject2 = ((StringBuilder)localObject2).toString();
      Log.i((String)localObject1, (String)localObject2);
      boolean bool2 = true;
      manageRequestIntervalTimer(bool2);
    }
  }
  
  public void setSearchQuery(String paramString)
  {
    searchQuery = paramString;
  }
  
  public void setTextColor(int paramInt)
  {
    int i = -16777216;
    i |= paramInt;
    textColor = i;
    AdContainer localAdContainer = ad;
    if (localAdContainer != null)
    {
      localAdContainer = ad;
      localAdContainer.setTextColor(paramInt);
    }
    invalidate();
  }
  
  /* Error */
  public void setVisibility(int paramInt)
  {
    // Byte code:
    //   0: nop
    //   1: aload_0
    //   2: invokespecial 404	android/widget/RelativeLayout:getVisibility	()I
    //   5: istore 5
    //   7: iload 5
    //   9: iload_1
    //   10: if_icmpeq +55 -> 65
    //   13: aload_0
    //   14: monitorenter
    //   15: aload_0
    //   16: invokevirtual 150	com/admob/android/ads/AdView:getChildCount	()I
    //   19: istore_3
    //   20: iconst_0
    //   21: istore 4
    //   23: iload 4
    //   25: iload_3
    //   26: if_icmpge +24 -> 50
    //   29: aload_0
    //   30: iload 4
    //   32: invokevirtual 189	com/admob/android/ads/AdView:getChildAt	(I)Landroid/view/View;
    //   35: astore_2
    //   36: aload_2
    //   37: iload_1
    //   38: invokevirtual 112	android/view/View:setVisibility	(I)V
    //   41: iload 4
    //   43: iconst_1
    //   44: iadd
    //   45: istore 4
    //   47: goto -24 -> 23
    //   50: aload_0
    //   51: iload_1
    //   52: invokespecial 305	android/widget/RelativeLayout:setVisibility	(I)V
    //   55: iload_1
    //   56: ifne +10 -> 66
    //   59: aload_0
    //   60: invokevirtual 166	com/admob/android/ads/AdView:requestFreshAd	()V
    //   63: aload_0
    //   64: monitorexit
    //   65: return
    //   66: aload_0
    //   67: getfield 229	com/admob/android/ads/AdView:ad	Lcom/admob/android/ads/AdContainer;
    //   70: astore 6
    //   72: aload_0
    //   73: aload 6
    //   75: invokevirtual 188	com/admob/android/ads/AdView:removeView	(Landroid/view/View;)V
    //   78: aconst_null
    //   79: astore 6
    //   81: aload_0
    //   82: aload 6
    //   84: putfield 229	com/admob/android/ads/AdView:ad	Lcom/admob/android/ads/AdContainer;
    //   87: aload_0
    //   88: invokevirtual 182	com/admob/android/ads/AdView:invalidate	()V
    //   91: goto -28 -> 63
    //   94: astore 6
    //   96: aload_0
    //   97: monitorexit
    //   98: aload 6
    //   100: athrow
    //   101: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	102	0	this	AdView
    //   0	102	1	paramInt	int
    //   35	2	2	localView	android.view.View
    //   19	8	3	i	int
    //   21	25	4	j	int
    //   5	6	5	k	int
    //   70	13	6	localAdContainer	AdContainer
    //   94	5	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   15	19	94	finally
    //   29	35	94	finally
    //   36	41	94	finally
    //   50	55	94	finally
    //   59	63	94	finally
    //   66	72	94	finally
    //   81	87	94	finally
    //   96	98	94	finally
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdView
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */