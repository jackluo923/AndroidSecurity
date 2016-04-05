package mobi.monaca.framework.nativeui.exception;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class MenuNameNotDefinedInAppMenuFileException
  extends NativeUIException
{
  private String menuName;
  
  public MenuNameNotDefinedInAppMenuFileException(String paramString1, String paramString2)
  {
    super(paramString1);
    menuName = paramString2;
  }
  
  public String getMessage()
  {
    return MonacaApplication.getStringFromResource(R.string.exception_menuname_left) + menuName + MonacaApplication.getStringFromResource(R.string.exception_menuname_right);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.exception.MenuNameNotDefinedInAppMenuFileException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */