package com.actionbarsherlock.internal.widget;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class IcsListPopupWindow$PopupScrollListener
  implements AbsListView.OnScrollListener
{
  private IcsListPopupWindow$PopupScrollListener(IcsListPopupWindow paramIcsListPopupWindow) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 1) && (!IcsListPopupWindow.access$1100(this$0)) && (IcsListPopupWindow.access$800(this$0).getContentView() != null))
    {
      IcsListPopupWindow.access$1000(this$0).removeCallbacks(IcsListPopupWindow.access$900(this$0));
      IcsListPopupWindow.access$900(this$0).run();
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.PopupScrollListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */