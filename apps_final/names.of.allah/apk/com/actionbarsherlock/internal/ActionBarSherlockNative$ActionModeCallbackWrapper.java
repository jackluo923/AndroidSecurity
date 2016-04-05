package com.actionbarsherlock.internal;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import com.actionbarsherlock.ActionBarSherlock.OnActionModeFinishedListener;
import com.actionbarsherlock.internal.view.menu.MenuWrapper;

class ActionBarSherlockNative$ActionModeCallbackWrapper
  implements android.view.ActionMode.Callback
{
  private final com.actionbarsherlock.view.ActionMode.Callback mCallback;
  
  public ActionBarSherlockNative$ActionModeCallbackWrapper(ActionBarSherlockNative paramActionBarSherlockNative, com.actionbarsherlock.view.ActionMode.Callback paramCallback)
  {
    mCallback = paramCallback;
  }
  
  public boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return mCallback.onActionItemClicked(ActionBarSherlockNative.access$000(this$0), ActionBarSherlockNative.access$000(this$0).getMenu().findItem(paramMenuItem));
  }
  
  public boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    ActionBarSherlockNative.access$002(this$0, new ActionBarSherlockNative.ActionModeWrapper(this$0, paramActionMode));
    return mCallback.onCreateActionMode(ActionBarSherlockNative.access$000(this$0), ActionBarSherlockNative.access$000(this$0).getMenu());
  }
  
  public void onDestroyActionMode(ActionMode paramActionMode)
  {
    mCallback.onDestroyActionMode(ActionBarSherlockNative.access$000(this$0));
    if ((ActionBarSherlockNative.access$100(this$0) instanceof ActionBarSherlock.OnActionModeFinishedListener)) {
      ((ActionBarSherlock.OnActionModeFinishedListener)ActionBarSherlockNative.access$200(this$0)).onActionModeFinished(ActionBarSherlockNative.access$000(this$0));
    }
  }
  
  public boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return mCallback.onPrepareActionMode(ActionBarSherlockNative.access$000(this$0), ActionBarSherlockNative.access$000(this$0).getMenu());
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockNative.ActionModeCallbackWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */