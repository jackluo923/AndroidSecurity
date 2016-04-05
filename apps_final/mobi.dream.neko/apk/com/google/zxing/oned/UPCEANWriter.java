package com.google.zxing.oned;

public abstract class UPCEANWriter
  extends OneDimensionalCodeWriter
{
  public int getDefaultMargin()
  {
    return UPCEANReader.START_END_PATTERN.length;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.UPCEANWriter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */