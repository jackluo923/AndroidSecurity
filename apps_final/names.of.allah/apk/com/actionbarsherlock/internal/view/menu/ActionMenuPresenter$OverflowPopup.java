package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.view.View;

class ActionMenuPresenter$OverflowPopup
  extends MenuPopupHelper
{
  public ActionMenuPresenter$OverflowPopup(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, MenuBuilder paramMenuBuilder, View paramView, boolean paramBoolean)
  {
    super(paramContext, paramMenuBuilder, paramView, paramBoolean);
    setCallback(mPopupPresenterCallback);
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    this$0.mMenu.close();
    ActionMenuPresenter.access$102(this$0, null);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuPresenter.OverflowPopup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */