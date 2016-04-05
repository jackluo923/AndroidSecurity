package org.java_websocket.exceptions;

public class IncompleteHandshakeException
  extends RuntimeException
{
  private static final long serialVersionUID = 7906596804233893092L;
  private int newsize;
  
  public IncompleteHandshakeException()
  {
    newsize = 0;
  }
  
  public IncompleteHandshakeException(int paramInt)
  {
    newsize = paramInt;
  }
  
  public int getPreferedSize()
  {
    return newsize;
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.exceptions.IncompleteHandshakeException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */