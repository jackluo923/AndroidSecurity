package com.google.kagegamesgson.stream;

import java.io.IOException;

public final class MalformedJsonException
  extends IOException
{
  private static final long serialVersionUID = 1L;
  
  public MalformedJsonException(String paramString)
  {
    super(paramString);
  }
  
  public MalformedJsonException(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    initCause(paramThrowable);
  }
  
  public MalformedJsonException(Throwable paramThrowable)
  {
    initCause(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.google.kagegamesgson.stream.MalformedJsonException
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */