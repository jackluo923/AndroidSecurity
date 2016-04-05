package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.view.View;
import com.actionbarsherlock.view.MenuItem;

class ActionMenuPresenter$ActionButtonSubmenu
  extends MenuPopupHelper
{
  public ActionMenuPresenter$ActionButtonSubmenu(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, SubMenuBuilder paramSubMenuBuilder)
  {
    super(paramContext, paramSubMenuBuilder);
    int i;
    if (!((MenuItemImpl)paramSubMenuBuilder.getItem()).isActionButton())
    {
      if (ActionMenuPresenter.access$200(paramActionMenuPresenter) == null)
      {
        paramContext = (View)mMenuView;
        setAnchorView(paramContext);
      }
    }
    else
    {
      setCallback(mPopupPresenterCallback);
      int j = paramSubMenuBuilder.size();
      i = 0;
      label61:
      if (i >= j) {
        break label120;
      }
      paramActionMenuPresenter = paramSubMenuBuilder.getItem(i);
      if ((!paramActionMenuPresenter.isVisible()) || (paramActionMenuPresenter.getIcon() == null)) {
        break label111;
      }
    }
    label111:
    label120:
    for (boolean bool = true;; bool = false)
    {
      setForceShowIcon(bool);
      return;
      paramContext = ActionMenuPresenter.access$200(paramActionMenuPresenter);
      break;
      i += 1;
      break label61;
    }
  }
  
  public void onDismiss()
  {
    super.onDismiss();
    ActionMenuPresenter.access$302(this$0, null);
    this$0.mOpenSubMenuId = 0;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuPresenter.ActionButtonSubmenu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */