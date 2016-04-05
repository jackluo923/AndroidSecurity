package com.appyet.activity;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.actionbarsherlock.app.ActionBar;
import com.appyet.d.d;

public final class YouTubePlayerActivity$ActionBarPaddedFrameLayout
  extends FrameLayout
{
  private ActionBar a;
  private boolean b = true;
  
  public YouTubePlayerActivity$ActionBarPaddedFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public YouTubePlayerActivity$ActionBarPaddedFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public YouTubePlayerActivity$ActionBarPaddedFrameLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int j = 0;
    int i = j;
    try
    {
      if (b)
      {
        i = j;
        if (a != null)
        {
          i = j;
          if (a.isShowing()) {
            i = a.getHeight();
          }
        }
      }
      setPadding(0, i, 0, 0);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        d.a(localException);
      }
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public final void setActionBar(ActionBar paramActionBar)
  {
    a = paramActionBar;
    requestLayout();
  }
  
  public final void setEnablePadding(boolean paramBoolean)
  {
    b = paramBoolean;
    requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.YouTubePlayerActivity.ActionBarPaddedFrameLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */