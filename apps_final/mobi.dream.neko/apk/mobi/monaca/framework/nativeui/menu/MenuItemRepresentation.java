package mobi.monaca.framework.nativeui.menu;

import android.R.drawable;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.bootloader.LocalFileBootloader;
import mobi.monaca.framework.nativeui.UIContext;
import mobi.monaca.framework.psedo.R.string;

public class MenuItemRepresentation
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  protected String action = "";
  protected String iconImagePath = "";
  protected String title;
  
  public MenuItemRepresentation(String paramString)
  {
    title = paramString;
  }
  
  public void addMenuItemToMenu(final UIContext paramUIContext, Menu paramMenu)
  {
    MenuItem localMenuItem = paramMenu.add(title);
    if ((iconImagePath.equals("")) || (iconImagePath.startsWith(MonacaApplication.getStringFromResource(R.string.at)))) {}
    try
    {
      int i = ((Integer)R.drawable.class.getField(MonacaApplication.getStringFromResource(R.string.nc_menu_icmenu) + iconImagePath.substring(1)).get(null)).intValue();
      localMenuItem.setIcon(paramUIContext.getResources().getDrawable(i));
      localMenuItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener()
      {
        public boolean onMenuItemClick(MenuItem paramAnonymousMenuItem)
        {
          if (!action.equals(""))
          {
            paramUIContext.react(MonacaApplication.getStringFromResource(R.string.js_scheme) + action);
            return true;
          }
          return false;
        }
      });
      return;
    }
    catch (Exception paramMenu)
    {
      for (;;)
      {
        try
        {
          if (iconImagePath.startsWith(MonacaApplication.getStringFromResource(R.string.nc_relative_data)))
          {
            paramMenu = new FileInputStream(iconImagePath);
            localMenuItem.setIcon(new BitmapDrawable(paramUIContext.getResources(), BitmapFactory.decodeStream(paramMenu)));
            paramMenu.close();
          }
          else
          {
            paramMenu = LocalFileBootloader.openAsset(paramUIContext, MonacaApplication.getStringFromResource(R.string.www_slash) + iconImagePath);
            continue;
            paramMenu = paramMenu;
          }
        }
        catch (IOException paramMenu) {}
      }
    }
  }
  
  public void setAction(String paramString)
  {
    action = paramString;
  }
  
  public void setIconImagePath(String paramString)
  {
    iconImagePath = paramString;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.menu.MenuItemRepresentation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */