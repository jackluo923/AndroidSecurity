package com.actionbarsherlock.internal.widget;

import android.view.View;
import android.widget.FrameLayout;

public class CollapsibleActionViewWrapper
  extends FrameLayout
  implements android.view.CollapsibleActionView
{
  private final com.actionbarsherlock.view.CollapsibleActionView child;
  
  public CollapsibleActionViewWrapper(View paramView)
  {
    super(paramView.getContext());
    child = ((com.actionbarsherlock.view.CollapsibleActionView)paramView);
    addView(paramView);
  }
  
  public void onActionViewCollapsed()
  {
    child.onActionViewCollapsed();
  }
  
  public void onActionViewExpanded()
  {
    child.onActionViewExpanded();
  }
  
  public View unwrap()
  {
    return getChildAt(0);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.CollapsibleActionViewWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */