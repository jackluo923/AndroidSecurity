package com.actionbarsherlock.internal.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.actionbarsherlock.internal.view.menu.MenuItemImpl;

class ActionBarView$2
  implements View.OnClickListener
{
  ActionBarView$2(ActionBarView paramActionBarView) {}
  
  public void onClick(View paramView)
  {
    paramView = access$100this$0).mCurrentExpandedItem;
    if (paramView != null) {
      paramView.collapseActionView();
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */