package mobi.monaca.framework.nativeui.menu;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.psedo.R.string;

class MenuItemRepresentation$1
  implements MenuItem.OnMenuItemClickListener
{
  MenuItemRepresentation$1(MenuItemRepresentation paramMenuItemRepresentation, UIContext paramUIContext) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    if (!this$0.action.equals(""))
    {
      val$context.react(MonacaApplication.getStringFromResource(R.string.js_scheme) + this$0.action);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.menu.MenuItemRepresentation.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */