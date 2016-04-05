package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.hq;
import com.google.android.gms.plus.internal.g;

public final class PlusOneButton
  extends FrameLayout
{
  public static final int ANNOTATION_BUBBLE = 1;
  public static final int ANNOTATION_INLINE = 2;
  public static final int ANNOTATION_NONE = 0;
  public static final int DEFAULT_ACTIVITY_REQUEST_CODE = -1;
  public static final int SIZE_MEDIUM = 1;
  public static final int SIZE_SMALL = 0;
  public static final int SIZE_STANDARD = 3;
  public static final int SIZE_TALL = 2;
  private int abA;
  private PlusOneButton.OnPlusOneClickListener abB;
  private View aby;
  private int abz;
  private int mSize;
  private String qV;
  
  public PlusOneButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PlusOneButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    mSize = getSize(paramContext, paramAttributeSet);
    abz = getAnnotation(paramContext, paramAttributeSet);
    abA = -1;
    z(getContext());
    if (isInEditMode()) {}
  }
  
  protected static int getAnnotation(Context paramContext, AttributeSet paramAttributeSet)
  {
    int i = 0;
    paramContext = hq.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "annotation", paramContext, paramAttributeSet, true, false, "PlusOneButton");
    if ("INLINE".equalsIgnoreCase(paramContext)) {
      i = 2;
    }
    while ("NONE".equalsIgnoreCase(paramContext)) {
      return i;
    }
    return 1;
  }
  
  protected static int getSize(Context paramContext, AttributeSet paramAttributeSet)
  {
    paramContext = hq.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "size", paramContext, paramAttributeSet, true, false, "PlusOneButton");
    if ("SMALL".equalsIgnoreCase(paramContext)) {
      return 0;
    }
    if ("MEDIUM".equalsIgnoreCase(paramContext)) {
      return 1;
    }
    if ("TALL".equalsIgnoreCase(paramContext)) {
      return 2;
    }
    return 3;
  }
  
  private void z(Context paramContext)
  {
    if (aby != null) {
      removeView(aby);
    }
    aby = g.a(paramContext, mSize, abz, qV, abA);
    setOnPlusOneClickListener(abB);
    addView(aby);
  }
  
  public final void initialize(String paramString, int paramInt)
  {
    hn.a(getContext() instanceof Activity, "To use this method, the PlusOneButton must be placed in an Activity. Use initialize(String, OnPlusOneClickListener).");
    qV = paramString;
    abA = paramInt;
    z(getContext());
  }
  
  public final void initialize(String paramString, PlusOneButton.OnPlusOneClickListener paramOnPlusOneClickListener)
  {
    qV = paramString;
    abA = 0;
    z(getContext());
    setOnPlusOneClickListener(paramOnPlusOneClickListener);
  }
  
  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    aby.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    View localView = aby;
    measureChild(localView, paramInt1, paramInt2);
    setMeasuredDimension(localView.getMeasuredWidth(), localView.getMeasuredHeight());
  }
  
  public final void setAnnotation(int paramInt)
  {
    abz = paramInt;
    z(getContext());
  }
  
  public final void setOnPlusOneClickListener(PlusOneButton.OnPlusOneClickListener paramOnPlusOneClickListener)
  {
    abB = paramOnPlusOneClickListener;
    aby.setOnClickListener(new PlusOneButton.DefaultOnPlusOneClickListener(this, paramOnPlusOneClickListener));
  }
  
  public final void setSize(int paramInt)
  {
    mSize = paramInt;
    z(getContext());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.PlusOneButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */