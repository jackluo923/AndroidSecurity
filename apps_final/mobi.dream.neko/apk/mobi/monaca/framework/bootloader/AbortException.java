package mobi.monaca.framework.bootloader;

public class AbortException
  extends RuntimeException
{
  private static final long serialVersionUID = 1L;
  
  public AbortException(Exception paramException)
  {
    super(paramException);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.bootloader.AbortException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */