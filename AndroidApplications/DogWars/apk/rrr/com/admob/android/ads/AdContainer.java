package com.admob.android.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PathEffect;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;

class AdContainer
  extends RelativeLayout
  implements Animation.AnimationListener, Ad.NetworkListener
{
  private static final int ADMOB_TEXT_ID = 3;
  private static final String ADS_BY_ADMOB = "Ads by AdMob";
  private static final Typeface ADS_BY_ADMOB_FONT;
  private static final float ADS_BY_ADMOB_FONT_SIZE = 9.5F;
  private static final Typeface AD_FONT;
  private static final float AD_FONT_SIZE = 13.0F;
  private static final int AD_TEXT_ID = 2;
  public static final int DEFAULT_BACKGROUND_COLOR = -16777216;
  public static final int DEFAULT_TEXT_COLOR = -1;
  private static final int FOCUS_COLOR = -1147097;
  private static final float FOCUS_CORNER_ROUNDING = 3.0F;
  private static final float FOCUS_WIDTH = 3.0F;
  private static final int GRADIENT_BACKGROUND_COLOR = -1;
  private static final double GRADIENT_STOP = 0.4375D;
  private static final int GRADIENT_TOP_ALPHA = 127;
  private static final int HIGHLIGHT_BACKGROUND_COLOR = -1147097;
  private static final int HIGHLIGHT_COLOR = -19456;
  private static final int HIGHLIGHT_TEXT_COLOR = -16777216;
  private static final int ICON_ID = 1;
  public static final int MAX_WIDTH = 320;
  private static final int NUM_MILLIS_IN_SECS = 1000;
  private static final int PADDING_DEFAULT = 8;
  private static final float PULSE_ANIMATION_DURATION = 0.5F;
  private static final float PULSE_GROWN_SCALE = 1.2F;
  private static final float PULSE_GROW_KEY_TIME = 0.4F;
  private static final float PULSE_INITIAL_SCALE = 1.0F;
  private static final float PULSE_SHRUNKEN_SCALE = 0.001F;
  private ProgressBar activityIndicator;
  private Ad ad;
  private TextView adMobBrandingTextView;
  private TextView adTextView;
  private int backgroundColor;
  private boolean clickInProgress;
  private BitmapDrawable defaultBackground;
  private BitmapDrawable focusedBackground;
  private ImageView iconView;
  private Drawable lastBackground;
  private int padding;
  private BitmapDrawable pressedBackground;
  private int textColor;
  
  static
  {
    Typeface localTypeface = Typeface.SANS_SERIF;
    int i = 1;
    localTypeface = Typeface.create(localTypeface, i);
    AD_FONT = localTypeface;
    localTypeface = Typeface.SANS_SERIF;
    i = 0;
    localTypeface = Typeface.create(localTypeface, i);
    ADS_BY_ADMOB_FONT = localTypeface;
  }
  
  public AdContainer(Ad paramAd, Context paramContext)
  {
    super(paramContext);
    int i = -16777216;
    backgroundColor = i;
    i = -1;
    textColor = i;
    AttributeSet localAttributeSet = null;
    int j = 0;
    init(paramAd, paramContext, localAttributeSet, j);
  }
  
  public AdContainer(Ad paramAd, Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramAd, paramContext, paramAttributeSet, i);
  }
  
  public AdContainer(Ad paramAd, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    int i = -16777216;
    backgroundColor = i;
    i = -1;
    textColor = i;
    init(paramAd, paramContext, paramAttributeSet, paramInt);
  }
  
  private void click()
  {
    Object localObject1 = this;
    localObject1 = ad;
    Object localObject5 = localObject1;
    Object localObject2;
    Object localObject9;
    if (localObject5 != null)
    {
      boolean bool3 = isPressed();
      if (bool3)
      {
        bool3 = false;
        localObject1 = this;
        boolean bool2 = bool3;
        ((AdContainer)localObject1).setPressed(bool2);
        localObject1 = this;
        boolean bool1 = clickInProgress;
        bool3 = bool1;
        if (!bool3)
        {
          bool3 = true;
          bool1 = bool3;
          AdContainer localAdContainer1 = this;
          clickInProgress = bool1;
          localObject2 = this;
          localObject2 = iconView;
          Object localObject6 = localObject2;
          if (localObject6 == null) {
            break label390;
          }
          AnimationSet localAnimationSet = new android/view/animation/AnimationSet;
          AdContainer localAdContainer2 = 1;
          localObject2 = localAnimationSet;
          localAdContainer1 = localAdContainer2;
          ((AnimationSet)localObject2).<init>(localAdContainer1);
          long l6 = 200L;
          localObject2 = this;
          localObject2 = iconView;
          Object localObject7 = localObject2;
          int i = ((ImageView)localObject7).getWidth();
          float f1 = i;
          float f3 = 2.0F;
          float f6 = f1 / f3;
          localObject2 = this;
          localObject2 = iconView;
          Object localObject8 = localObject2;
          int j = ((ImageView)localObject8).getHeight();
          float f2 = j;
          f3 = 2.0F;
          float f7 = f2 / f3;
          ScaleAnimation localScaleAnimation1 = new android/view/animation/ScaleAnimation;
          f2 = 1.0F;
          f3 = 1.2F;
          float f4 = 1.0F;
          float f5 = 1.2F;
          localScaleAnimation1.<init>(f2, f3, f4, f5, f6, f7);
          localObject2 = localScaleAnimation1;
          long l1 = l6;
          ((ScaleAnimation)localObject2).setDuration(l1);
          localObject2 = localAnimationSet;
          Object localObject3 = localScaleAnimation1;
          ((AnimationSet)localObject2).addAnimation((Animation)localObject3);
          ScaleAnimation localScaleAnimation2 = new android/view/animation/ScaleAnimation;
          float f8 = 1.2F;
          float f9 = 0.001F;
          float f10 = 1.2F;
          float f11 = 0.001F;
          float f12 = f6;
          float f13 = f7;
          localScaleAnimation2.<init>(f8, f9, f10, f11, f12, f13);
          long l4 = 299L;
          localScaleAnimation2.setDuration(l4);
          localObject2 = localScaleAnimation2;
          long l2 = l6;
          ((ScaleAnimation)localObject2).setStartOffset(l2);
          localObject2 = localScaleAnimation2;
          Object localObject4 = this;
          ((ScaleAnimation)localObject2).setAnimationListener((Animation.AnimationListener)localObject4);
          localObject2 = localAnimationSet;
          localObject4 = localScaleAnimation2;
          ((AnimationSet)localObject2).addAnimation((Animation)localObject4);
          localObject9 = new com/admob/android/ads/AdContainer$3;
          localObject2 = localObject9;
          localObject4 = this;
          ((AdContainer.3)localObject2).<init>((AdContainer)localObject4);
          long l5 = 500L;
          localObject2 = this;
          localObject4 = localObject9;
          long l3 = l5;
          ((AdContainer)localObject2).postDelayed((Runnable)localObject4, l3);
          localObject2 = this;
          localObject2 = iconView;
          localObject9 = localObject2;
          localObject2 = localObject9;
          localObject4 = localAnimationSet;
          ((ImageView)localObject2).startAnimation((Animation)localObject4);
        }
      }
    }
    for (;;)
    {
      return;
      label390:
      localObject2 = this;
      localObject2 = ad;
      localObject9 = localObject2;
      ((Ad)localObject9).clicked();
    }
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    int i3 = 2;
    int i2 = 1;
    boolean bool7 = false;
    int i = paramMotionEvent.getAction();
    String str1 = "AdMob SDK";
    boolean bool1 = Log.isLoggable(str1, i3);
    if (bool1)
    {
      String str2 = "AdMob SDK";
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str3 = "dispatchTouchEvent: action=";
      localObject = ((StringBuilder)localObject).append(str3);
      localObject = ((StringBuilder)localObject).append(i);
      str3 = " x=";
      localObject = ((StringBuilder)localObject).append(str3);
      float f7 = paramMotionEvent.getX();
      localObject = ((StringBuilder)localObject).append(f7);
      String str4 = " y=";
      localObject = ((StringBuilder)localObject).append(str4);
      float f8 = paramMotionEvent.getY();
      localObject = ((StringBuilder)localObject).append(f8);
      localObject = ((StringBuilder)localObject).toString();
      Log.v(str2, (String)localObject);
    }
    if (i == 0) {
      setPressed(i2);
    }
    for (;;)
    {
      boolean bool2 = super.dispatchTouchEvent(paramMotionEvent);
      return bool2;
      boolean bool6;
      if (i == i3)
      {
        float f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        int k = getLeft();
        int n = getTop();
        int m = getRight();
        int j = getBottom();
        float f3 = k;
        boolean bool3 = f1 < f3;
        if (!bool3)
        {
          float f4 = m;
          boolean bool4 = f1 < f4;
          if (!bool4)
          {
            float f5 = n;
            boolean bool5 = f2 < f5;
            if (!bool5)
            {
              float f6 = j;
              bool6 = f2 < f6;
              if (!bool6) {
                break label281;
              }
            }
          }
        }
        setPressed(bool7);
        continue;
        label281:
        setPressed(i2);
      }
      else if (i == i2)
      {
        bool6 = isPressed();
        if (bool6) {
          click();
        }
        setPressed(bool7);
      }
      else
      {
        int i1 = 3;
        if (i == i1) {
          setPressed(bool7);
        }
      }
    }
  }
  
  public boolean dispatchTrackballEvent(MotionEvent paramMotionEvent)
  {
    int n = 1;
    String str1 = "AdMob SDK";
    int k = 2;
    boolean bool1 = Log.isLoggable(str1, k);
    if (bool1)
    {
      String str2 = "AdMob SDK";
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str3 = "dispatchTrackballEvent: action=";
      localObject = ((StringBuilder)localObject).append(str3);
      int m = paramMotionEvent.getAction();
      localObject = ((StringBuilder)localObject).append(m);
      localObject = ((StringBuilder)localObject).toString();
      Log.v(str2, (String)localObject);
    }
    int i = paramMotionEvent.getAction();
    if (i == 0) {
      setPressed(n);
    }
    for (;;)
    {
      boolean bool2 = super.onTrackballEvent(paramMotionEvent);
      return bool2;
      int j = paramMotionEvent.getAction();
      if (j == n)
      {
        boolean bool3 = hasFocus();
        if (bool3) {
          click();
        }
        bool3 = false;
        setPressed(bool3);
      }
    }
  }
  
  private static void drawBackground(Canvas paramCanvas, Rect paramRect, int paramInt1, int paramInt2)
  {
    boolean bool = true;
    Paint localPaint1 = new android/graphics/Paint;
    localPaint1.<init>();
    localPaint1.setColor(paramInt1);
    localPaint1.setAntiAlias(bool);
    paramCanvas.drawRect(paramRect, localPaint1);
    int k = 127;
    int i1 = Color.red(paramInt2);
    int i2 = Color.green(paramInt2);
    int i4 = Color.blue(paramInt2);
    int j = Color.argb(k, i1, i2, i4);
    k = 2;
    int[] arrayOfInt = new int[k];
    k = 0;
    arrayOfInt[k] = j;
    arrayOfInt[bool] = paramInt2;
    GradientDrawable localGradientDrawable = new android/graphics/drawable/GradientDrawable;
    GradientDrawable.Orientation localOrientation = GradientDrawable.Orientation.TOP_BOTTOM;
    localGradientDrawable.<init>(localOrientation, arrayOfInt);
    int m = paramRect.height();
    double d1 = m;
    double d2 = 0.4375D;
    d1 *= d2;
    int n = (int)d1;
    i1 = top;
    int i = n + i1;
    n = left;
    i1 = top;
    int i3 = right;
    localGradientDrawable.setBounds(n, i1, i3, i);
    localGradientDrawable.draw(paramCanvas);
    Rect localRect = new android/graphics/Rect;
    n = left;
    i1 = right;
    i3 = bottom;
    localRect.<init>(n, i, i1, i3);
    Paint localPaint2 = new android/graphics/Paint;
    localPaint2.<init>();
    localPaint2.setColor(paramInt2);
    paramCanvas.drawRect(localRect, localPaint2);
  }
  
  private static void drawFocusRing(Canvas paramCanvas, Rect paramRect)
  {
    float f = 3.0F;
    Paint localPaint = new android/graphics/Paint;
    localPaint.<init>();
    boolean bool = true;
    localPaint.setAntiAlias(bool);
    int i = -1147097;
    localPaint.setColor(i);
    Object localObject = Paint.Style.STROKE;
    localPaint.setStyle((Paint.Style)localObject);
    localPaint.setStrokeWidth(f);
    localObject = new android/graphics/CornerPathEffect;
    ((CornerPathEffect)localObject).<init>(f);
    localPaint.setPathEffect((PathEffect)localObject);
    Path localPath = new android/graphics/Path;
    localPath.<init>();
    localObject = new android/graphics/RectF;
    ((RectF)localObject).<init>(paramRect);
    Path.Direction localDirection = Path.Direction.CW;
    localPath.addRoundRect((RectF)localObject, f, f, localDirection);
    paramCanvas.drawPath(localPath, localPaint);
  }
  
  private BitmapDrawable generateBackgroundDrawable(Rect paramRect, int paramInt1, int paramInt2)
  {
    boolean bool = false;
    BitmapDrawable localBitmapDrawable = generateBackgroundDrawable(paramRect, paramInt1, paramInt2, bool);
    return localBitmapDrawable;
  }
  
  private BitmapDrawable generateBackgroundDrawable(Rect paramRect, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    try
    {
      int i = paramRect.width();
      int j = paramRect.height();
      Bitmap.Config localConfig = Bitmap.Config.ARGB_8888;
      Bitmap localBitmap = Bitmap.createBitmap(i, j, localConfig);
      Canvas localCanvas = new android/graphics/Canvas;
      localCanvas.<init>(localBitmap);
      drawBackground(localCanvas, paramRect, paramInt1, paramInt2);
      if (paramBoolean) {
        drawFocusRing(localCanvas, paramRect);
      }
      localBitmapDrawable = new android/graphics/drawable/BitmapDrawable;
      localBitmapDrawable.<init>(localBitmap);
    }
    catch (Throwable localThrowable2)
    {
      for (;;)
      {
        BitmapDrawable localBitmapDrawable;
        Throwable localThrowable1 = localThrowable2;
        Object localObject = null;
      }
    }
    return localBitmapDrawable;
  }
  
  protected Ad getAd()
  {
    Ad localAd = ad;
    return localAd;
  }
  
  public int getBackgroundColor()
  {
    int i = backgroundColor;
    return i;
  }
  
  public int getTextColor()
  {
    int i = textColor;
    return i;
  }
  
  private void init(Ad paramAd, Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    ad = paramAd;
    paramAd.setNetworkListener(this);
    BitmapDrawable localBitmapDrawable = null;
    defaultBackground = localBitmapDrawable;
    localBitmapDrawable = null;
    pressedBackground = localBitmapDrawable;
    localBitmapDrawable = null;
    focusedBackground = localBitmapDrawable;
    localBitmapDrawable = null;
    activityIndicator = localBitmapDrawable;
    boolean bool = false;
    clickInProgress = bool;
    Object localObject2;
    if (paramAd != null)
    {
      bool = true;
      setFocusable(bool);
      bool = true;
      setClickable(bool);
      Bitmap localBitmap = paramAd.getIcon();
      ImageView localImageView1 = null;
      iconView = localImageView1;
      int k = 8;
      padding = k;
      if (localBitmap != null)
      {
        k = 48;
        int i2 = localBitmap.getHeight();
        k -= i2;
        k /= 2;
        padding = k;
        ImageView localImageView2 = new android/widget/ImageView;
        localImageView2.<init>(paramContext);
        iconView = localImageView2;
        localImageView2 = iconView;
        localImageView2.setImageBitmap(localBitmap);
        RelativeLayout.LayoutParams localLayoutParams3 = new android/widget/RelativeLayout$LayoutParams;
        int m = localBitmap.getWidth();
        i2 = localBitmap.getHeight();
        localLayoutParams3.<init>(m, i2);
        m = padding;
        i2 = padding;
        i9 = 0;
        i10 = padding;
        localLayoutParams3.setMargins(m, i2, i9, i10);
        localObject1 = iconView;
        ((ImageView)localObject1).setLayoutParams(localLayoutParams3);
        localObject1 = iconView;
        i2 = 1;
        ((ImageView)localObject1).setId(i2);
        localObject1 = iconView;
        addView((View)localObject1);
        localObject1 = new android/widget/ProgressBar;
        ((ProgressBar)localObject1).<init>(paramContext);
        activityIndicator = ((ProgressBar)localObject1);
        localObject1 = activityIndicator;
        i2 = 1;
        ((ProgressBar)localObject1).setIndeterminate(i2);
        localObject1 = activityIndicator;
        int i3 = 1;
        ((ProgressBar)localObject1).setId(i3);
        localObject1 = activityIndicator;
        ((ProgressBar)localObject1).setLayoutParams(localLayoutParams3);
        localObject1 = activityIndicator;
        i3 = 4;
        ((ProgressBar)localObject1).setVisibility(i3);
        localObject1 = activityIndicator;
        addView((View)localObject1);
      }
      Object localObject1 = new android/widget/TextView;
      ((TextView)localObject1).<init>(paramContext);
      adTextView = ((TextView)localObject1);
      localObject1 = adTextView;
      Object localObject3 = paramAd.getText();
      ((TextView)localObject1).setText((CharSequence)localObject3);
      localObject1 = adTextView;
      localObject3 = AD_FONT;
      ((TextView)localObject1).setTypeface((Typeface)localObject3);
      localObject1 = adTextView;
      int i4 = textColor;
      ((TextView)localObject1).setTextColor(i4);
      localObject1 = adTextView;
      float f1 = 13.0F;
      ((TextView)localObject1).setTextSize(f1);
      localObject1 = adTextView;
      int i5 = 2;
      ((TextView)localObject1).setId(i5);
      RelativeLayout.LayoutParams localLayoutParams2 = new android/widget/RelativeLayout$LayoutParams;
      int n = -1;
      i5 = -1;
      localLayoutParams2.<init>(n, i5);
      if (localBitmap != null)
      {
        n = 1;
        i5 = 1;
        localLayoutParams2.addRule(n, i5);
      }
      n = padding;
      i5 = padding;
      int i9 = padding;
      int i10 = padding;
      localLayoutParams2.setMargins(n, i5, i9, i10);
      n = 11;
      localLayoutParams2.addRule(n);
      n = 10;
      localLayoutParams2.addRule(n);
      TextView localTextView = adTextView;
      localTextView.setLayoutParams(localLayoutParams2);
      localTextView = adTextView;
      addView(localTextView);
      localTextView = new android/widget/TextView;
      localTextView.<init>(paramContext);
      adMobBrandingTextView = localTextView;
      localTextView = adMobBrandingTextView;
      i5 = 5;
      localTextView.setGravity(i5);
      localTextView = adMobBrandingTextView;
      Object localObject4 = "Ads by AdMob";
      localObject4 = AdMobLocalizer.localize((String)localObject4);
      localTextView.setText((CharSequence)localObject4);
      localTextView = adMobBrandingTextView;
      localObject4 = ADS_BY_ADMOB_FONT;
      localTextView.setTypeface((Typeface)localObject4);
      localTextView = adMobBrandingTextView;
      int i6 = textColor;
      localTextView.setTextColor(i6);
      localTextView = adMobBrandingTextView;
      float f2 = 9.5F;
      localTextView.setTextSize(f2);
      localTextView = adMobBrandingTextView;
      int i7 = 3;
      localTextView.setId(i7);
      RelativeLayout.LayoutParams localLayoutParams1 = new android/widget/RelativeLayout$LayoutParams;
      int i1 = -2;
      i7 = -2;
      localLayoutParams1.<init>(i1, i7);
      i1 = 0;
      i7 = 0;
      i9 = padding;
      i10 = padding;
      localLayoutParams1.setMargins(i1, i7, i9, i10);
      i1 = 11;
      localLayoutParams1.addRule(i1);
      i1 = 12;
      localLayoutParams1.addRule(i1);
      localObject2 = adMobBrandingTextView;
      ((TextView)localObject2).setLayoutParams(localLayoutParams1);
      localObject2 = adMobBrandingTextView;
      addView((View)localObject2);
    }
    int j = -1;
    int i = -16777216;
    if (paramAttributeSet != null)
    {
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      String str2 = "http://schemas.android.com/apk/res/";
      localObject2 = ((StringBuilder)localObject2).append(str2);
      str2 = paramContext.getPackageName();
      localObject2 = ((StringBuilder)localObject2).append(str2);
      String str1 = ((StringBuilder)localObject2).toString();
      localObject2 = "textColor";
      int i8 = -1;
      j = paramAttributeSet.getAttributeUnsignedIntValue(str1, (String)localObject2, i8);
      localObject2 = "backgroundColor";
      i8 = -16777216;
      i = paramAttributeSet.getAttributeUnsignedIntValue(str1, (String)localObject2, i8);
    }
    setTextColor(j);
    setBackgroundColor(i);
  }
  
  public void onAnimationEnd(Animation paramAnimation) {}
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    BitmapDrawable localBitmapDrawable;
    if (paramBoolean)
    {
      localBitmapDrawable = focusedBackground;
      setBackgroundDrawable(localBitmapDrawable);
    }
    for (;;)
    {
      return;
      localBitmapDrawable = defaultBackground;
      setBackgroundDrawable(localBitmapDrawable);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    String str1 = "AdMob SDK";
    int j = 2;
    boolean bool1 = Log.isLoggable(str1, j);
    if (bool1)
    {
      String str2 = "AdMob SDK";
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str3 = "onKeyDown: keyCode=";
      localObject = ((StringBuilder)localObject).append(str3);
      localObject = ((StringBuilder)localObject).append(paramInt);
      localObject = ((StringBuilder)localObject).toString();
      Log.v(str2, (String)localObject);
    }
    int i = 66;
    if (paramInt != i)
    {
      i = 23;
      if (paramInt != i) {}
    }
    else
    {
      i = 1;
      setPressed(i);
    }
    boolean bool2 = super.onKeyDown(paramInt, paramKeyEvent);
    return bool2;
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    String str1 = "AdMob SDK";
    int j = 2;
    boolean bool1 = Log.isLoggable(str1, j);
    if (bool1)
    {
      String str2 = "AdMob SDK";
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      String str3 = "onKeyUp: keyCode=";
      localObject = ((StringBuilder)localObject).append(str3);
      localObject = ((StringBuilder)localObject).append(paramInt);
      localObject = ((StringBuilder)localObject).toString();
      Log.v(str2, (String)localObject);
    }
    int i = 66;
    if (paramInt != i)
    {
      i = 23;
      if (paramInt != i) {}
    }
    else
    {
      click();
    }
    i = 0;
    setPressed(i);
    boolean bool2 = super.onKeyUp(paramInt, paramKeyEvent);
    return bool2;
  }
  
  public void onNetworkActivityEnd()
  {
    AdContainer.1 local1 = new com/admob/android/ads/AdContainer$1;
    local1.<init>(this);
    post(local1);
  }
  
  public void onNetworkActivityStart()
  {
    AdContainer.2 local2 = new com/admob/android/ads/AdContainer$2;
    local2.<init>(this);
    post(local2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    TextView localTextView1 = adMobBrandingTextView;
    int i;
    Object localObject;
    if (localTextView1 != null)
    {
      localTextView1 = adTextView;
      if (localTextView1 != null)
      {
        localTextView1 = adMobBrandingTextView;
        i = localTextView1.getVisibility();
        if (paramInt1 > 0)
        {
          int j = 128;
          if (paramInt1 > j) {
            break label395;
          }
          localObject = adTextView;
          float f5 = 9.099999F;
          ((TextView)localObject).setTextSize(f5);
          i = 8;
        }
      }
    }
    for (;;)
    {
      int i4;
      if (i == 0)
      {
        localObject = adTextView;
        Typeface localTypeface = ((TextView)localObject).getTypeface();
        localObject = ad;
        String str = ((Ad)localObject).getText();
        if (str != null)
        {
          Paint localPaint = new android/graphics/Paint;
          localPaint.<init>();
          localPaint.setTypeface(localTypeface);
          localObject = adTextView;
          float f2 = ((TextView)localObject).getTextSize();
          localPaint.setTextSize(f2);
          float f3 = localPaint.measureText(str);
          int k = padding;
          k *= 2;
          k = paramInt1 - k;
          float f1 = k;
          ImageView localImageView = iconView;
          if (localImageView != null)
          {
            localImageView = iconView;
            int m = localImageView.getWidth();
            i4 = padding;
            m += i4;
            float f4 = m;
            f1 -= f4;
          }
          boolean bool1 = f3 < f1;
          if (bool1) {
            i = 8;
          }
        }
      }
      TextView localTextView2 = adMobBrandingTextView;
      localTextView2.setVisibility(i);
      if ((paramInt1 != 0) && (paramInt2 != 0))
      {
        Rect localRect = new android/graphics/Rect;
        int n = 0;
        i4 = 0;
        localRect.<init>(n, i4, paramInt1, paramInt2);
        n = -1;
        i4 = backgroundColor;
        BitmapDrawable localBitmapDrawable1 = generateBackgroundDrawable(localRect, n, i4);
        defaultBackground = localBitmapDrawable1;
        int i1 = -1147097;
        i4 = 46080;
        BitmapDrawable localBitmapDrawable2 = generateBackgroundDrawable(localRect, i1, i4);
        pressedBackground = localBitmapDrawable2;
        int i2 = -1;
        i4 = backgroundColor;
        boolean bool2 = true;
        BitmapDrawable localBitmapDrawable3 = generateBackgroundDrawable(localRect, i2, i4, bool2);
        focusedBackground = localBitmapDrawable3;
        localBitmapDrawable3 = defaultBackground;
        setBackgroundDrawable(localBitmapDrawable3);
      }
      return;
      label395:
      int i3 = 176;
      TextView localTextView3;
      float f6;
      if (paramInt1 <= i3)
      {
        localTextView3 = adTextView;
        f6 = 10.400001F;
        localTextView3.setTextSize(f6);
        i = 0;
        localTextView3 = adMobBrandingTextView;
        f6 = 7.6F;
        localTextView3.setTextSize(f6);
      }
      else
      {
        localTextView3 = adTextView;
        f6 = 13.0F;
        localTextView3.setTextSize(f6);
        i = 0;
        localTextView3 = adMobBrandingTextView;
        f6 = 9.5F;
        localTextView3.setTextSize(f6);
      }
    }
  }
  
  private void recycleBitmapDrawable(BitmapDrawable paramBitmapDrawable)
  {
    if (paramBitmapDrawable != null)
    {
      Bitmap localBitmap = paramBitmapDrawable.getBitmap();
      if (localBitmap != null) {
        localBitmap.recycle();
      }
    }
  }
  
  void recycleBitmaps()
  {
    BitmapDrawable localBitmapDrawable3 = null;
    BitmapDrawable localBitmapDrawable2 = defaultBackground;
    BitmapDrawable localBitmapDrawable1;
    if (localBitmapDrawable2 != null)
    {
      localBitmapDrawable1 = defaultBackground;
      defaultBackground = localBitmapDrawable3;
      recycleBitmapDrawable(localBitmapDrawable1);
    }
    localBitmapDrawable2 = pressedBackground;
    if (localBitmapDrawable2 != null)
    {
      localBitmapDrawable1 = pressedBackground;
      pressedBackground = localBitmapDrawable3;
      recycleBitmapDrawable(localBitmapDrawable1);
    }
    localBitmapDrawable2 = focusedBackground;
    if (localBitmapDrawable2 != null)
    {
      localBitmapDrawable1 = focusedBackground;
      focusedBackground = localBitmapDrawable3;
      recycleBitmapDrawable(localBitmapDrawable1);
    }
  }
  
  public void setBackgroundColor(int paramInt)
  {
    int i = -16777216;
    i |= paramInt;
    backgroundColor = i;
  }
  
  public void setPressed(boolean paramBoolean)
  {
    boolean bool;
    Object localObject1;
    int i;
    Object localObject2;
    if (paramBoolean)
    {
      bool = clickInProgress;
      if (bool) {}
    }
    else
    {
      bool = isPressed();
      if (bool != paramBoolean)
      {
        localObject1 = defaultBackground;
        i = textColor;
        if (!paramBoolean) {
          break label124;
        }
        localObject2 = getBackground();
        lastBackground = ((Drawable)localObject2);
        localObject1 = pressedBackground;
        i = -16777216;
      }
    }
    for (;;)
    {
      setBackgroundDrawable((Drawable)localObject1);
      localObject2 = adTextView;
      if (localObject2 != null)
      {
        localObject2 = adTextView;
        ((TextView)localObject2).setTextColor(i);
      }
      localObject2 = adMobBrandingTextView;
      if (localObject2 != null)
      {
        localObject2 = adMobBrandingTextView;
        ((TextView)localObject2).setTextColor(i);
      }
      super.setPressed(paramBoolean);
      invalidate();
      return;
      label124:
      localObject1 = lastBackground;
    }
  }
  
  public void setTextColor(int paramInt)
  {
    int i = -16777216;
    i |= paramInt;
    textColor = i;
    TextView localTextView = adTextView;
    int j;
    if (localTextView != null)
    {
      localTextView = adTextView;
      j = textColor;
      localTextView.setTextColor(j);
    }
    localTextView = adMobBrandingTextView;
    if (localTextView != null)
    {
      localTextView = adMobBrandingTextView;
      j = textColor;
      localTextView.setTextColor(j);
    }
    postInvalidate();
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdContainer
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */