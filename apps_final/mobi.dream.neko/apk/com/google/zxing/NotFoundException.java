package com.google.zxing;

public final class NotFoundException
  extends ReaderException
{
  private static final NotFoundException instance = new NotFoundException();
  
  public static NotFoundException getNotFoundInstance()
  {
    return instance;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.NotFoundException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */