package org.java_websocket.exceptions;

public class NotSendableException
  extends RuntimeException
{
  private static final long serialVersionUID = -6468967874576651628L;
  
  public NotSendableException() {}
  
  public NotSendableException(String paramString)
  {
    super(paramString);
  }
  
  public NotSendableException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public NotSendableException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.exceptions.NotSendableException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */