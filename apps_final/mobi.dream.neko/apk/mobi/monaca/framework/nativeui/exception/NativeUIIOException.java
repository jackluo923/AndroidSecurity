package mobi.monaca.framework.nativeui.exception;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class NativeUIIOException
  extends NativeUIException
{
  private String keyName;
  private String keyValue;
  private String platformErrorMessage;
  
  public NativeUIIOException(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(paramString1);
    keyName = paramString2;
    keyValue = paramString3;
    platformErrorMessage = paramString4;
  }
  
  public String getMessage()
  {
    return componentName + MonacaApplication.getStringFromResource(R.string.exception_nativeuiio_left) + keyName + MonacaApplication.getStringFromResource(R.string.exception_nativeuiio_center) + keyValue + MonacaApplication.getStringFromResource(R.string.exception_nativeuiio_right);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.exception.NativeUIIOException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */