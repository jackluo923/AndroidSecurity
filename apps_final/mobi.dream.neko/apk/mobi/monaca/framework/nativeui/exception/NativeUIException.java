package mobi.monaca.framework.nativeui.exception;

public abstract class NativeUIException
  extends Exception
{
  protected String componentName;
  
  public NativeUIException(String paramString)
  {
    componentName = paramString;
  }
  
  public abstract String getMessage();
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.exception.NativeUIException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */