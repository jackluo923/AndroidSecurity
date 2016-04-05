package fr.castorflex.android.smoothprogressbar;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ProgressBar;

public class SmoothProgressBar
  extends ProgressBar
{
  public SmoothProgressBar(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public SmoothProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.spbStyle);
  }
  
  public SmoothProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = paramContext.getResources();
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, h.SmoothProgressBar, paramInt, 0);
    paramInt = paramAttributeSet.getColor(1, localResources.getColor(d.spb_default_color));
    int i = paramAttributeSet.getInteger(4, localResources.getInteger(f.spb_default_sections_count));
    int j = paramAttributeSet.getDimensionPixelSize(3, localResources.getDimensionPixelSize(e.spb_default_stroke_separator_length));
    float f1 = paramAttributeSet.getDimension(2, localResources.getDimension(e.spb_default_stroke_width));
    float f2 = paramAttributeSet.getFloat(5, Float.parseFloat(localResources.getString(g.spb_default_speed)));
    int k = paramAttributeSet.getInteger(6, localResources.getInteger(f.spb_default_interpolator));
    boolean bool1 = paramAttributeSet.getBoolean(7, localResources.getBoolean(c.spb_default_reversed));
    boolean bool2 = paramAttributeSet.getBoolean(8, localResources.getBoolean(c.spb_default_mirror_mode));
    int m = paramAttributeSet.getResourceId(9, 0);
    paramAttributeSet.recycle();
    switch (k)
    {
    default: 
      paramAttributeSet = new AccelerateInterpolator();
    }
    int[] arrayOfInt;
    for (;;)
    {
      arrayOfInt = null;
      if (m != 0) {
        arrayOfInt = localResources.getIntArray(m);
      }
      paramContext = new k(paramContext);
      if (f2 >= 0.0F) {
        break;
      }
      throw new IllegalArgumentException("Speed must be >= 0");
      paramAttributeSet = new AccelerateDecelerateInterpolator();
      continue;
      paramAttributeSet = new DecelerateInterpolator();
      continue;
      paramAttributeSet = new LinearInterpolator();
    }
    d = f2;
    a = paramAttributeSet;
    if (i <= 0) {
      throw new IllegalArgumentException("SectionsCount must be > 0");
    }
    b = i;
    if (j < 0) {
      throw new IllegalArgumentException("SeparatorLength must be >= 0");
    }
    g = j;
    paramContext = paramContext.a(f1);
    e = bool1;
    f = bool2;
    if ((arrayOfInt != null) && (arrayOfInt.length > 0))
    {
      if ((arrayOfInt == null) || (arrayOfInt.length == 0)) {
        throw new IllegalArgumentException("Your color array must not be empty");
      }
      c = arrayOfInt;
    }
    for (;;)
    {
      setIndeterminateDrawable(paramContext.a());
      return;
      paramContext.a(paramInt);
    }
  }
  
  private i a()
  {
    Drawable localDrawable = getIndeterminateDrawable();
    if ((localDrawable == null) || (!(localDrawable instanceof i))) {
      throw new RuntimeException("The drawable is not a SmoothProgressDrawable");
    }
    return (i)localDrawable;
  }
  
  public void setInterpolator(Interpolator paramInterpolator)
  {
    super.setInterpolator(paramInterpolator);
    Drawable localDrawable = getIndeterminateDrawable();
    if ((localDrawable != null) && ((localDrawable instanceof i))) {
      ((i)localDrawable).a(paramInterpolator);
    }
  }
  
  public void setSmoothProgressDrawableColor(int paramInt)
  {
    a().a(paramInt);
  }
  
  public void setSmoothProgressDrawableColors(int[] paramArrayOfInt)
  {
    a().a(paramArrayOfInt);
  }
  
  public void setSmoothProgressDrawableInterpolator(Interpolator paramInterpolator)
  {
    a().a(paramInterpolator);
  }
  
  public void setSmoothProgressDrawableMirrorMode(boolean paramBoolean)
  {
    a().b(paramBoolean);
  }
  
  public void setSmoothProgressDrawableReversed(boolean paramBoolean)
  {
    a().a(paramBoolean);
  }
  
  public void setSmoothProgressDrawableSectionsCount(int paramInt)
  {
    a().b(paramInt);
  }
  
  public void setSmoothProgressDrawableSeparatorLength(int paramInt)
  {
    a().c(paramInt);
  }
  
  public void setSmoothProgressDrawableSpeed(float paramFloat)
  {
    a().a(paramFloat);
  }
  
  public void setSmoothProgressDrawableStrokeWidth(float paramFloat)
  {
    a().b(paramFloat);
  }
}

/* Location:
 * Qualified Name:     fr.castorflex.android.smoothprogressbar.SmoothProgressBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */