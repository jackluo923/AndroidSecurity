package mobi.monaca.framework.nativeui.exception;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class ConversionException
  extends NativeUIException
{
  private String keyName;
  private String targetType;
  private String userSpecifiedValue;
  
  public ConversionException(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramString1);
    keyName = paramString2;
    userSpecifiedValue = paramString3;
    targetType = paramString4;
  }
  
  public String getMessage()
  {
    return componentName + MonacaApplication.getStringFromResource(R.string.space) + keyName + MonacaApplication.getStringFromResource(R.string.space) + userSpecifiedValue + MonacaApplication.getStringFromResource(R.string.exception_conversion) + targetType;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.exception.ConversionException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */