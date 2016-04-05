package com.actionbarsherlock.internal.widget;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class IcsListPopupWindow$PopupTouchInterceptor
  implements View.OnTouchListener
{
  private IcsListPopupWindow$PopupTouchInterceptor(IcsListPopupWindow paramIcsListPopupWindow) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    if ((i == 0) && (IcsListPopupWindow.access$800(this$0) != null) && (IcsListPopupWindow.access$800(this$0).isShowing()) && (j >= 0) && (j < IcsListPopupWindow.access$800(this$0).getWidth()) && (k >= 0) && (k < IcsListPopupWindow.access$800(this$0).getHeight())) {
      IcsListPopupWindow.access$1000(this$0).postDelayed(IcsListPopupWindow.access$900(this$0), 250L);
    }
    for (;;)
    {
      return false;
      if (i == 1) {
        IcsListPopupWindow.access$1000(this$0).removeCallbacks(IcsListPopupWindow.access$900(this$0));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.PopupTouchInterceptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */