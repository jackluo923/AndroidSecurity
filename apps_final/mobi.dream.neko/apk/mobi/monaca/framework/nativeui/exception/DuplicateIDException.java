package mobi.monaca.framework.nativeui.exception;

import java.util.Arrays;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

public class DuplicateIDException
  extends NativeUIException
{
  private String[] components;
  private String id;
  
  public DuplicateIDException(String paramString, String[] paramArrayOfString)
  {
    super(paramArrayOfString.toString());
    id = paramString;
    components = paramArrayOfString;
  }
  
  public String getMessage()
  {
    return MonacaApplication.getStringFromResource(R.string.exception_duplicate_left) + id + MonacaApplication.getStringFromResource(R.string.exception_duplicate_right) + Arrays.toString(components);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.exception.DuplicateIDException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */