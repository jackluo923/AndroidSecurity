package com.google.zxing;

public abstract class ReaderException
  extends Exception
{
  public final Throwable fillInStackTrace()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.ReaderException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */