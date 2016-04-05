package mobi.monaca.framework.nativeui.exception;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class RequiredKeyNotFoundException
  extends NativeUIException
{
  protected String keyName;
  
  public RequiredKeyNotFoundException(String paramString1, String paramString2)
  {
    super(paramString1);
    keyName = paramString2;
  }
  
  public String getMessage()
  {
    return MonacaApplication.getStringFromResource(R.string.exception_requiredkey_left) + keyName + MonacaApplication.getStringFromResource(R.string.exception_requiredkey_right) + componentName;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.exception.RequiredKeyNotFoundException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */