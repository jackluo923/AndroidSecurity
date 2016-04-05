package com.google.zxing.aztec;

import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;

public final class AztecDetectorResult
  extends DetectorResult
{
  private final boolean compact;
  private final int nbDatablocks;
  private final int nbLayers;
  
  public AztecDetectorResult(BitMatrix paramBitMatrix, ResultPoint[] paramArrayOfResultPoint, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    super(paramBitMatrix, paramArrayOfResultPoint);
    compact = paramBoolean;
    nbDatablocks = paramInt1;
    nbLayers = paramInt2;
  }
  
  public int getNbDatablocks()
  {
    return nbDatablocks;
  }
  
  public int getNbLayers()
  {
    return nbLayers;
  }
  
  public boolean isCompact()
  {
    return compact;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.aztec.AztecDetectorResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */