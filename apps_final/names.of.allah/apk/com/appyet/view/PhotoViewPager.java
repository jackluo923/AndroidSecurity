package com.appyet.view;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;

public class PhotoViewPager
  extends ViewPager
{
  public PhotoViewPager(Context paramContext)
  {
    super(paramContext);
  }
  
  public PhotoViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    try
    {
      boolean bool = super.onInterceptTouchEvent(paramMotionEvent);
      return bool;
    }
    catch (IllegalArgumentException paramMotionEvent)
    {
      paramMotionEvent.printStackTrace();
      return false;
    }
    catch (ArrayIndexOutOfBoundsException paramMotionEvent)
    {
      paramMotionEvent.printStackTrace();
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.appyet.view.PhotoViewPager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */