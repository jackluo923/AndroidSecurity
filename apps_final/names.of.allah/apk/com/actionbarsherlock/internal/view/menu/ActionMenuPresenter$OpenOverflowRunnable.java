package com.actionbarsherlock.internal.view.menu;

import android.view.View;

class ActionMenuPresenter$OpenOverflowRunnable
  implements Runnable
{
  private ActionMenuPresenter.OverflowPopup mPopup;
  
  public ActionMenuPresenter$OpenOverflowRunnable(ActionMenuPresenter paramActionMenuPresenter, ActionMenuPresenter.OverflowPopup paramOverflowPopup)
  {
    mPopup = paramOverflowPopup;
  }
  
  public void run()
  {
    this$0.mMenu.changeMenuMode();
    View localView = (View)this$0.mMenuView;
    if ((localView != null) && (localView.getWindowToken() != null) && (mPopup.tryShow())) {
      ActionMenuPresenter.access$102(this$0, mPopup);
    }
    ActionMenuPresenter.access$402(this$0, null);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuPresenter.OpenOverflowRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */