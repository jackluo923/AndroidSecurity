package com.millennialmedia.android;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;
import android.widget.Button;

class AdViewOverlayView$SetCloseButtonTouchDelegateRunnable
  implements Runnable
{
  int bottom;
  private final Button closeButton;
  int left;
  int right;
  int top;
  
  AdViewOverlayView$SetCloseButtonTouchDelegateRunnable(Button paramButton, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    closeButton = paramButton;
    top = paramInt1;
    left = paramInt2;
    bottom = paramInt3;
    right = paramInt4;
  }
  
  public void run()
  {
    Object localObject = new Rect();
    closeButton.getHitRect((Rect)localObject);
    top += top;
    right += right;
    bottom += bottom;
    left += left;
    localObject = new TouchDelegate((Rect)localObject, closeButton);
    if (View.class.isInstance(closeButton.getParent())) {
      ((View)closeButton.getParent()).setTouchDelegate((TouchDelegate)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayView.SetCloseButtonTouchDelegateRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */