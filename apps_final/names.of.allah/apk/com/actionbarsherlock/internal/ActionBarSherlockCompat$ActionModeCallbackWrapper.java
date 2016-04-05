package com.actionbarsherlock.internal;

import com.actionbarsherlock.ActionBarSherlock.OnActionModeFinishedListener;
import com.actionbarsherlock.internal.widget.ActionBarContextView;
import com.actionbarsherlock.view.ActionMode;
import com.actionbarsherlock.view.ActionMode.Callback;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuItem;

class ActionBarSherlockCompat$ActionModeCallbackWrapper
  implements ActionMode.Callback
{
  private final ActionMode.Callback mWrapped;
  
  public ActionBarSherlockCompat$ActionModeCallbackWrapper(ActionBarSherlockCompat paramActionBarSherlockCompat, ActionMode.Callback paramCallback)
  {
    mWrapped = paramCallback;
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return mWrapped.onActionItemClicked(paramActionMode, paramMenuItem);
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return mWrapped.onCreateActionMode(paramActionMode, paramMenu);
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    mWrapped.onDestroyActionMode(paramActionMode);
    if (ActionBarSherlockCompat.access$300(this$0) != null)
    {
      ActionBarSherlockCompat.access$300(this$0).setVisibility(8);
      ActionBarSherlockCompat.access$300(this$0).removeAllViews();
    }
    if ((ActionBarSherlockCompat.access$400(this$0) instanceof ActionBarSherlock.OnActionModeFinishedListener)) {
      ((ActionBarSherlock.OnActionModeFinishedListener)ActionBarSherlockCompat.access$600(this$0)).onActionModeFinished(ActionBarSherlockCompat.access$500(this$0));
    }
    ActionBarSherlockCompat.access$502(this$0, null);
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return mWrapped.onPrepareActionMode(paramActionMode, paramMenu);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockCompat.ActionModeCallbackWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */