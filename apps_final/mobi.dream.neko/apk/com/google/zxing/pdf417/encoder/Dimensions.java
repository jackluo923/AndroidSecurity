package com.google.zxing.pdf417.encoder;

public final class Dimensions
{
  private final int maxCols;
  private final int maxRows;
  private final int minCols;
  private final int minRows;
  
  public Dimensions(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    minCols = paramInt1;
    maxCols = paramInt2;
    minRows = paramInt3;
    maxRows = paramInt4;
  }
  
  public int getMaxCols()
  {
    return maxCols;
  }
  
  public int getMaxRows()
  {
    return maxRows;
  }
  
  public int getMinCols()
  {
    return minCols;
  }
  
  public int getMinRows()
  {
    return minRows;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.pdf417.encoder.Dimensions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */