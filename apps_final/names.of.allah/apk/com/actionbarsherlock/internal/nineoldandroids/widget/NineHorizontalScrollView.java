package com.actionbarsherlock.internal.nineoldandroids.widget;

import android.content.Context;
import android.widget.HorizontalScrollView;
import com.actionbarsherlock.internal.nineoldandroids.view.animation.AnimatorProxy;

public class NineHorizontalScrollView
  extends HorizontalScrollView
{
  private final AnimatorProxy mProxy;
  
  public NineHorizontalScrollView(Context paramContext)
  {
    super(paramContext);
    if (AnimatorProxy.NEEDS_PROXY) {}
    for (paramContext = AnimatorProxy.wrap(this);; paramContext = null)
    {
      mProxy = paramContext;
      return;
    }
  }
  
  public float getAlpha()
  {
    if (AnimatorProxy.NEEDS_PROXY) {
      return mProxy.getAlpha();
    }
    return super.getAlpha();
  }
  
  public void setAlpha(float paramFloat)
  {
    if (AnimatorProxy.NEEDS_PROXY)
    {
      mProxy.setAlpha(paramFloat);
      return;
    }
    super.setAlpha(paramFloat);
  }
  
  public void setVisibility(int paramInt)
  {
    if (mProxy != null)
    {
      if (paramInt != 8) {
        break label23;
      }
      clearAnimation();
    }
    for (;;)
    {
      super.setVisibility(paramInt);
      return;
      label23:
      if (paramInt == 0) {
        setAnimation(mProxy);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.nineoldandroids.widget.NineHorizontalScrollView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */