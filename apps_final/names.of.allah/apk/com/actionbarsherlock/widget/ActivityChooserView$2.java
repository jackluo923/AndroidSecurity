package com.actionbarsherlock.widget;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.actionbarsherlock.internal.widget.IcsListPopupWindow;
import com.actionbarsherlock.view.ActionProvider;

class ActivityChooserView$2
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ActivityChooserView$2(ActivityChooserView paramActivityChooserView) {}
  
  public void onGlobalLayout()
  {
    if (this$0.isShowingPopup())
    {
      if (this$0.isShown()) {
        break label31;
      }
      ActivityChooserView.access$100(this$0).dismiss();
    }
    label31:
    do
    {
      return;
      ActivityChooserView.access$100(this$0).show();
    } while (this$0.mProvider == null);
    this$0.mProvider.subUiVisibilityChanged(true);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.ActivityChooserView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */