package jp.innovationplus.ipp.core;

import jp.innovationplus.ipp.constants.IPPConstants;

public class IPPException
  extends RuntimeException
{
  private static final long serialVersionUID = 1L;
  private int code;
  
  public IPPException(int paramInt)
  {
    super(IPPConstants.descriptionErrorCode(paramInt));
    code = paramInt;
  }
  
  public int getCode()
  {
    return code;
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.core.IPPException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */