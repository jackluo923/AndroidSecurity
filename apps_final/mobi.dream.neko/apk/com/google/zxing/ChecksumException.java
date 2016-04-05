package com.google.zxing;

public final class ChecksumException
  extends ReaderException
{
  private static final ChecksumException instance = new ChecksumException();
  
  public static ChecksumException getChecksumInstance()
  {
    return instance;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.ChecksumException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */