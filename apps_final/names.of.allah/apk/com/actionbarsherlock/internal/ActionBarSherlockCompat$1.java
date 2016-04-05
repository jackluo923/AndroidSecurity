package com.actionbarsherlock.internal;

import android.app.Activity;

class ActionBarSherlockCompat$1
  implements Runnable
{
  ActionBarSherlockCompat$1(ActionBarSherlockCompat paramActionBarSherlockCompat) {}
  
  public void run()
  {
    if ((!ActionBarSherlockCompat.access$000(this$0)) && (!ActionBarSherlockCompat.access$100(this$0).isFinishing()) && (ActionBarSherlockCompat.access$200(this$0) == null)) {
      this$0.dispatchInvalidateOptionsMenu();
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.ActionBarSherlockCompat.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */