package mobi.monaca.framework.nativeui.menu;

import android.view.Menu;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import mobi.monaca.framework.nativeui.UIContext;

public class MenuRepresentation
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  protected List<MenuItemRepresentation> menuItemList;
  
  public MenuRepresentation(List<MenuItemRepresentation> paramList)
  {
    menuItemList = paramList;
  }
  
  public void configureMenu(UIContext paramUIContext, Menu paramMenu)
  {
    Iterator localIterator = menuItemList.iterator();
    while (localIterator.hasNext()) {
      ((MenuItemRepresentation)localIterator.next()).addMenuItemToMenu(paramUIContext, paramMenu);
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.menu.MenuRepresentation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */