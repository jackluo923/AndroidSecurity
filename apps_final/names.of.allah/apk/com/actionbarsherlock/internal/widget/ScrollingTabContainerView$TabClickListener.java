package com.actionbarsherlock.internal.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.actionbarsherlock.app.ActionBar.Tab;

class ScrollingTabContainerView$TabClickListener
  implements View.OnClickListener
{
  private ScrollingTabContainerView$TabClickListener(ScrollingTabContainerView paramScrollingTabContainerView) {}
  
  public void onClick(View paramView)
  {
    ((ScrollingTabContainerView.TabView)paramView).getTab().select();
    int j = ScrollingTabContainerView.access$200(this$0).getChildCount();
    int i = 0;
    if (i < j)
    {
      View localView = ScrollingTabContainerView.access$200(this$0).getChildAt(i);
      if (localView == paramView) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        i += 1;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.ScrollingTabContainerView.TabClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */