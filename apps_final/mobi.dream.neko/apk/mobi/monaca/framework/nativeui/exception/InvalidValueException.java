package mobi.monaca.framework.nativeui.exception;

import java.util.Arrays;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class InvalidValueException
  extends NativeUIException
{
  protected String componentKey;
  protected String userSpecifiedValue;
  protected String[] validValues;
  
  public InvalidValueException(String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    super(paramString1);
    componentKey = paramString2;
    userSpecifiedValue = paramString3;
    validValues = paramArrayOfString;
  }
  
  public String getMessage()
  {
    return componentName + MonacaApplication.getStringFromResource(R.string.space) + componentKey + MonacaApplication.getStringFromResource(R.string.space) + userSpecifiedValue + MonacaApplication.getStringFromResource(R.string.exception_invalidvalue) + Arrays.toString(validValues);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.exception.InvalidValueException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */