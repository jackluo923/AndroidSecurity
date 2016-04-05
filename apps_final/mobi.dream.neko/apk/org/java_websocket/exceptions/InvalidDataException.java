package org.java_websocket.exceptions;

public class InvalidDataException
  extends Exception
{
  private static final long serialVersionUID = 3731842424390998726L;
  private int closecode;
  
  public InvalidDataException(int paramInt)
  {
    closecode = paramInt;
  }
  
  public InvalidDataException(int paramInt, String paramString)
  {
    super(paramString);
    closecode = paramInt;
  }
  
  public InvalidDataException(int paramInt, String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    closecode = paramInt;
  }
  
  public InvalidDataException(int paramInt, Throwable paramThrowable)
  {
    super(paramThrowable);
    closecode = paramInt;
  }
  
  public int getCloseCode()
  {
    return closecode;
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.exceptions.InvalidDataException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */