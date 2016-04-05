package mobi.monaca.framework.nativeui.exception;

import java.util.Arrays;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class KeyNotValidException
  extends NativeUIException
{
  protected String componentKey = componentKey;
  protected String userSpecifiedKey;
  protected String[] validKeys;
  
  public KeyNotValidException(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    super(paramString1);
    userSpecifiedKey = paramString2;
    validKeys = paramArrayOfString;
  }
  
  public String getMessage()
  {
    return componentName + MonacaApplication.getStringFromResource(R.string.exception_keynotvalid_left) + userSpecifiedKey + MonacaApplication.getStringFromResource(R.string.exception_keynotvalid_center) + Arrays.toString(validKeys) + MonacaApplication.getStringFromResource(R.string.exception_keynotvalid_right);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.exception.KeyNotValidException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */