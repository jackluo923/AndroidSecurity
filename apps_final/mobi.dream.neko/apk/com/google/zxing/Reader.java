package com.google.zxing;

import java.util.Map;

public abstract interface Reader
{
  public abstract Result decode(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException, ChecksumException, FormatException;
  
  public abstract Result decode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException;
  
  public abstract void reset();
}

/* Location:
 * Qualified Name:     com.google.zxing.Reader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */