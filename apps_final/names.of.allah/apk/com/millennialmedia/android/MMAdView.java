package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.RelativeLayout.LayoutParams;
import java.lang.reflect.Method;

public final class MMAdView
  extends MMLayout
  implements View.OnClickListener, Animation.AnimationListener
{
  static final int DEFAULT_RESIZE_PARAM_VALUES = -50;
  public static final int TRANSITION_DOWN = 3;
  public static final int TRANSITION_FADE = 1;
  public static final int TRANSITION_NONE = 0;
  public static final int TRANSITION_RANDOM = 4;
  public static final int TRANSITION_UP = 2;
  int height = 0;
  int oldHeight = -50;
  int oldWidth = -50;
  ImageView refreshAnimationimageView;
  int transitionType = 4;
  MMAdView.ResizeView view;
  int width = 0;
  
  public MMAdView(Context paramContext)
  {
    super(paramContext);
    adImpl = new MMAdView.MMAdViewMMAdImpl(this, paramContext);
    init(paramContext);
  }
  
  @Deprecated
  public MMAdView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  @Deprecated
  public MMAdView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    String str1;
    String str2;
    if (!isInEditMode())
    {
      MMSDK.Log.d("Creating MMAdView from XML layout.");
      adImpl = new MMAdView.MMAdViewMMAdImpl(this, paramContext);
      if (paramAttributeSet != null)
      {
        super.setApid(paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "apid"));
        adImpl.ignoreDensityScaling = paramAttributeSet.getAttributeBooleanValue("http://millennialmedia.com/android/schema", "ignoreDensityScaling", false);
        str1 = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "height");
        str2 = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "width");
      }
    }
    try
    {
      if (!TextUtils.isEmpty(str1)) {
        height = Integer.parseInt(str1);
      }
      if (!TextUtils.isEmpty(str2)) {
        width = Integer.parseInt(str2);
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      for (;;) {}
    }
    if (adImpl.mmRequest != null)
    {
      adImpl.mmRequest.age = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "age");
      adImpl.mmRequest.children = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "children");
      adImpl.mmRequest.education = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "education");
      adImpl.mmRequest.ethnicity = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "ethnicity");
      adImpl.mmRequest.gender = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "gender");
      adImpl.mmRequest.income = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "income");
      adImpl.mmRequest.keywords = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "keywords");
      adImpl.mmRequest.orientation = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "orientation");
      adImpl.mmRequest.marital = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "marital");
      adImpl.mmRequest.politics = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "politics");
      adImpl.mmRequest.vendor = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "vendor");
      adImpl.mmRequest.zip = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "zip");
    }
    goalId = paramAttributeSet.getAttributeValue("http://millennialmedia.com/android/schema", "goalId");
    adImpl.xmlLayout = true;
    init(paramContext);
    return;
    initEclipseAd(paramContext);
  }
  
  private void attachToWindow(View paramView)
  {
    try
    {
      detachFromParent(paramView);
      Object localObject = getContext();
      if ((localObject != null) && ((localObject instanceof Activity)))
      {
        localObject = ((Activity)localObject).getWindow();
        if (localObject != null)
        {
          localObject = ((Window)localObject).getDecorView();
          if ((localObject != null) && ((localObject instanceof ViewGroup))) {
            ((ViewGroup)localObject).addView(paramView);
          }
        }
      }
      return;
    }
    finally {}
  }
  
  private void callSetTranslationX(int paramInt)
  {
    try
    {
      View.class.getMethod("setTranslationX", new Class[] { Float.TYPE }).invoke(this, new Object[] { Integer.valueOf(paramInt) });
      return;
    }
    catch (Exception localException) {}
  }
  
  private void callSetTranslationY(int paramInt)
  {
    try
    {
      View.class.getMethod("setTranslationY", new Class[] { Float.TYPE }).invoke(this, new Object[] { Integer.valueOf(paramInt) });
      return;
    }
    catch (Exception localException) {}
  }
  
  private void detachFromParent(View paramView)
  {
    if (paramView != null) {}
    try
    {
      Object localObject = getParent();
      if ((localObject != null) && ((localObject instanceof ViewGroup)))
      {
        localObject = (ViewGroup)localObject;
        if (paramView.getParent() != null) {
          ((ViewGroup)localObject).removeView(paramView);
        }
      }
      return;
    }
    finally {}
  }
  
  private void getAdInternal()
  {
    if (adImpl != null) {
      adImpl.requestAd();
    }
  }
  
  private boolean hasDefaultResizeParams()
  {
    return (oldWidth == -50) && (oldHeight == -50);
  }
  
  private void init(Context paramContext)
  {
    setBackgroundColor(0);
    adImpl.adType = "b";
    setOnClickListener(this);
    setFocusable(true);
    refreshAnimationimageView = new ImageView(paramContext);
    refreshAnimationimageView.setScaleType(ImageView.ScaleType.FIT_XY);
    refreshAnimationimageView.setVisibility(8);
    addView(refreshAnimationimageView, new RelativeLayout.LayoutParams(-2, -2));
    setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
  }
  
  /* Error */
  private void initEclipseAd(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aconst_null
    //   6: astore_2
    //   7: new 279	android/widget/ImageView
    //   10: dup
    //   11: aload_1
    //   12: invokespecial 280	android/widget/ImageView:<init>	(Landroid/content/Context;)V
    //   15: astore 6
    //   17: ldc_w 309
    //   20: invokestatic 315	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   23: astore 5
    //   25: aload 5
    //   27: astore_1
    //   28: aload 5
    //   30: ifnull +39 -> 69
    //   33: aload 5
    //   35: astore_1
    //   36: aload 5
    //   38: getstatic 320	java/io/File:separator	Ljava/lang/String;
    //   41: invokevirtual 326	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   44: ifne +25 -> 69
    //   47: new 328	java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial 330	java/lang/StringBuilder:<init>	()V
    //   54: aload 5
    //   56: invokevirtual 334	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: getstatic 320	java/io/File:separator	Ljava/lang/String;
    //   62: invokevirtual 334	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 338	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: astore_1
    //   69: new 317	java/io/File
    //   72: dup
    //   73: new 328	java/lang/StringBuilder
    //   76: dup
    //   77: invokespecial 330	java/lang/StringBuilder:<init>	()V
    //   80: aload_1
    //   81: invokevirtual 334	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc_w 340
    //   87: invokevirtual 334	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: invokevirtual 338	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   93: invokespecial 342	java/io/File:<init>	(Ljava/lang/String;)V
    //   96: astore 5
    //   98: aload 5
    //   100: invokevirtual 345	java/io/File:exists	()Z
    //   103: ifne +231 -> 334
    //   106: new 347	java/net/URL
    //   109: dup
    //   110: ldc_w 349
    //   113: invokespecial 350	java/net/URL:<init>	(Ljava/lang/String;)V
    //   116: invokevirtual 354	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   119: checkcast 356	java/net/HttpURLConnection
    //   122: astore_1
    //   123: aload_1
    //   124: iconst_1
    //   125: invokevirtual 359	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   128: aload_1
    //   129: sipush 3000
    //   132: invokevirtual 362	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   135: aload_1
    //   136: invokevirtual 365	java/net/HttpURLConnection:connect	()V
    //   139: aload_1
    //   140: invokevirtual 369	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   143: astore_1
    //   144: new 371	java/io/FileOutputStream
    //   147: dup
    //   148: aload 5
    //   150: invokespecial 374	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   153: astore_3
    //   154: sipush 1024
    //   157: newarray <illegal type>
    //   159: astore_2
    //   160: aload_1
    //   161: aload_2
    //   162: invokevirtual 380	java/io/InputStream:read	([B)I
    //   165: istore 7
    //   167: iload 7
    //   169: ifle +42 -> 211
    //   172: aload_3
    //   173: aload_2
    //   174: iconst_0
    //   175: iload 7
    //   177: invokevirtual 386	java/io/OutputStream:write	([BII)V
    //   180: goto -20 -> 160
    //   183: astore_2
    //   184: aload_1
    //   185: astore_2
    //   186: aload_3
    //   187: astore_1
    //   188: aload_2
    //   189: ifnull +7 -> 196
    //   192: aload_2
    //   193: invokevirtual 389	java/io/InputStream:close	()V
    //   196: aload_1
    //   197: ifnull +7 -> 204
    //   200: aload_1
    //   201: invokevirtual 390	java/io/OutputStream:close	()V
    //   204: aload_0
    //   205: aload 6
    //   207: invokevirtual 391	com/millennialmedia/android/MMAdView:addView	(Landroid/view/View;)V
    //   210: return
    //   211: aload_1
    //   212: astore_2
    //   213: aload_3
    //   214: astore_1
    //   215: aload 5
    //   217: invokevirtual 394	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   220: invokestatic 400	android/graphics/BitmapFactory:decodeFile	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   223: astore_3
    //   224: aload_3
    //   225: ifnull +9 -> 234
    //   228: aload 6
    //   230: aload_3
    //   231: invokevirtual 404	android/widget/ImageView:setImageBitmap	(Landroid/graphics/Bitmap;)V
    //   234: aload_2
    //   235: ifnull +7 -> 242
    //   238: aload_2
    //   239: invokevirtual 389	java/io/InputStream:close	()V
    //   242: aload_1
    //   243: ifnull -39 -> 204
    //   246: aload_1
    //   247: invokevirtual 390	java/io/OutputStream:close	()V
    //   250: goto -46 -> 204
    //   253: astore_1
    //   254: goto -50 -> 204
    //   257: astore_2
    //   258: aconst_null
    //   259: astore_1
    //   260: aload 4
    //   262: astore_3
    //   263: aload_1
    //   264: ifnull +7 -> 271
    //   267: aload_1
    //   268: invokevirtual 389	java/io/InputStream:close	()V
    //   271: aload_3
    //   272: ifnull +7 -> 279
    //   275: aload_3
    //   276: invokevirtual 390	java/io/OutputStream:close	()V
    //   279: aload_2
    //   280: athrow
    //   281: astore_1
    //   282: goto -3 -> 279
    //   285: astore_2
    //   286: aload 4
    //   288: astore_3
    //   289: goto -26 -> 263
    //   292: astore_2
    //   293: goto -30 -> 263
    //   296: astore_3
    //   297: aload_2
    //   298: astore 4
    //   300: aload_3
    //   301: astore_2
    //   302: aload_1
    //   303: astore_3
    //   304: aload 4
    //   306: astore_1
    //   307: goto -44 -> 263
    //   310: astore_1
    //   311: goto -107 -> 204
    //   314: astore_1
    //   315: aconst_null
    //   316: astore_1
    //   317: goto -129 -> 188
    //   320: astore_2
    //   321: aconst_null
    //   322: astore_3
    //   323: aload_1
    //   324: astore_2
    //   325: aload_3
    //   326: astore_1
    //   327: goto -139 -> 188
    //   330: astore_3
    //   331: goto -143 -> 188
    //   334: aconst_null
    //   335: astore_1
    //   336: aload_3
    //   337: astore_2
    //   338: goto -123 -> 215
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	341	0	this	MMAdView
    //   0	341	1	paramContext	Context
    //   6	168	2	arrayOfByte	byte[]
    //   183	1	2	localException1	Exception
    //   185	54	2	localContext1	Context
    //   257	23	2	localObject1	Object
    //   285	1	2	localObject2	Object
    //   292	6	2	localObject3	Object
    //   301	1	2	localObject4	Object
    //   320	1	2	localException2	Exception
    //   324	14	2	localObject5	Object
    //   1	288	3	localObject6	Object
    //   296	5	3	localObject7	Object
    //   303	23	3	localContext2	Context
    //   330	7	3	localException3	Exception
    //   3	302	4	localObject8	Object
    //   23	193	5	localObject9	Object
    //   15	214	6	localImageView	ImageView
    //   165	11	7	i	int
    // Exception table:
    //   from	to	target	type
    //   154	160	183	java/lang/Exception
    //   160	167	183	java/lang/Exception
    //   172	180	183	java/lang/Exception
    //   238	242	253	java/lang/Exception
    //   246	250	253	java/lang/Exception
    //   17	25	257	finally
    //   36	69	257	finally
    //   69	144	257	finally
    //   267	271	281	java/lang/Exception
    //   275	279	281	java/lang/Exception
    //   144	154	285	finally
    //   154	160	292	finally
    //   160	167	292	finally
    //   172	180	292	finally
    //   215	224	296	finally
    //   228	234	296	finally
    //   192	196	310	java/lang/Exception
    //   200	204	310	java/lang/Exception
    //   17	25	314	java/lang/Exception
    //   36	69	314	java/lang/Exception
    //   69	144	314	java/lang/Exception
    //   144	154	320	java/lang/Exception
    //   215	224	330	java/lang/Exception
    //   228	234	330	java/lang/Exception
  }
  
  private void setUnresizeParameters()
  {
    if (hasDefaultResizeParams())
    {
      ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
      oldWidth = width;
      oldHeight = height;
      if (oldWidth <= 0) {
        oldWidth = getWidth();
      }
      if (oldHeight <= 0) {
        oldHeight = getHeight();
      }
    }
  }
  
  final void closeAreaTouched()
  {
    adImpl.unresizeToDefault();
  }
  
  public final void getAd()
  {
    if ((adImpl != null) && (adImpl.requestListener != null))
    {
      getAd(adImpl.requestListener);
      return;
    }
    getAdInternal();
  }
  
  public final void getAd(RequestListener paramRequestListener)
  {
    if (adImpl != null) {
      adImpl.requestListener = paramRequestListener;
    }
    getAdInternal();
  }
  
  final void handleMraidResize(DTOResizeParameters paramDTOResizeParameters)
  {
    try
    {
      refreshAnimationimageView.setImageBitmap(null);
      if (MMSDK.hasSetTranslationMethod())
      {
        if (view == null)
        {
          view = new MMAdView.ResizeView(this, getContext());
          view.setId(304025022);
          view.setLayoutParams(new RelativeLayout.LayoutParams(1, 1));
          view.setBackgroundColor(0);
        }
        if (view.getParent() == null)
        {
          localObject = getParent();
          if ((localObject != null) && ((localObject instanceof ViewGroup))) {
            ((ViewGroup)localObject).addView(view);
          }
        }
        Object localObject = new MMAdView.BannerBounds(this, paramDTOResizeParameters);
        if (!allowOffScreen) {
          ((MMAdView.BannerBounds)localObject).calculateOnScreenBounds();
        }
        int[] arrayOfInt1 = new int[2];
        getLocationInWindow(arrayOfInt1);
        attachToWindow(this);
        int[] arrayOfInt2 = new int[2];
        getLocationInWindow(arrayOfInt2);
        setUnresizeParameters();
        int i = arrayOfInt1[0];
        int j = arrayOfInt2[0];
        int k = arrayOfInt1[1];
        int m = arrayOfInt2[1];
        ((MMAdView.BannerBounds)localObject).modifyLayoutParams(getLayoutParams());
        callSetTranslationX(translationX + (i - j));
        callSetTranslationY(translationY + (k - m));
        setCloseArea(customClosePosition);
      }
      return;
    }
    finally {}
  }
  
  final void handleUnresize()
  {
    try
    {
      if (MMSDK.hasSetTranslationMethod())
      {
        removeCloseTouchDelegate();
        Object localObject1;
        if (!hasDefaultResizeParams())
        {
          localObject1 = getLayoutParams();
          width = oldWidth;
          height = oldHeight;
          callSetTranslationX(0);
          callSetTranslationY(0);
          oldWidth = -50;
          oldHeight = -50;
        }
        if (view != null)
        {
          isResizing = true;
          view.attachToContext(this);
          localObject1 = getParent();
          if ((localObject1 != null) && ((localObject1 instanceof ViewGroup)))
          {
            localObject1 = (ViewGroup)localObject1;
            if (view.getParent() != null) {
              ((ViewGroup)localObject1).removeView(view);
            }
          }
          isResizing = false;
        }
        setBackgroundColor(-16776961);
      }
      return;
    }
    finally {}
  }
  
  @Deprecated
  public final void onAnimationEnd(Animation paramAnimation)
  {
    refreshAnimationimageView.setVisibility(8);
  }
  
  @Deprecated
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  @Deprecated
  public final void onAnimationStart(Animation paramAnimation) {}
  
  @Deprecated
  public final void onClick(View paramView)
  {
    MMSDK.Log.d("On click for " + paramView.getId() + " view, " + paramView + " adimpl" + adImpl);
    onTouchEvent(MotionEvent.obtain(0L, System.currentTimeMillis(), 1, 0.0F, 0.0F, 0));
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    MMSDK.Log.w(String.format("AdView onLayout changed%b int left %d int top %d int right %d int bottom %d", new Object[] { Boolean.valueOf(paramBoolean), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3), Integer.valueOf(paramInt4) }));
    float f = getContextgetResourcesgetDisplayMetricsdensity;
    if (width <= 0) {
      width = ((int)(getWidth() / f));
    }
    if (height <= 0) {
      height = ((int)(getHeight() / f));
    }
  }
  
  public final void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if ((paramBoolean) && (adImpl.controller != null))
    {
      if (adImpl.controller.webView == null) {
        adImpl.controller.webView = MMAdImplController.getWebViewFromExistingAdImpl(adImpl);
      }
      if (!adImpl.controller.webView.isCurrentParent(adImpl.internalId))
      {
        adImpl.controller.webView.removeFromParent();
        addView(adImpl.controller.webView);
      }
    }
  }
  
  public final void setHeight(int paramInt)
  {
    height = paramInt;
  }
  
  public final void setTransitionType(int paramInt)
  {
    transitionType = paramInt;
  }
  
  public final void setWidth(int paramInt)
  {
    width = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */