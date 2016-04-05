package com.google.zxing.pdf417.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.pdf417.decoder.ec.ErrorCorrection;

public final class Decoder
{
  private static final int MAX_EC_CODEWORDS = 512;
  private static final int MAX_ERRORS = 3;
  private final ErrorCorrection errorCorrection = new ErrorCorrection();
  
  private void correctErrors(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
    throws ChecksumException
  {
    if ((paramArrayOfInt2.length > paramInt / 2 + 3) || (paramInt < 0) || (paramInt > 512)) {
      throw ChecksumException.getChecksumInstance();
    }
    errorCorrection.decode(paramArrayOfInt1, paramInt, paramArrayOfInt2);
  }
  
  private static void verifyCodewordCount(int[] paramArrayOfInt, int paramInt)
    throws FormatException
  {
    if (paramArrayOfInt.length < 4) {
      throw FormatException.getFormatInstance();
    }
    int i = paramArrayOfInt[0];
    if (i > paramArrayOfInt.length) {
      throw FormatException.getFormatInstance();
    }
    if (i == 0)
    {
      if (paramInt < paramArrayOfInt.length) {
        paramArrayOfInt[0] = (paramArrayOfInt.length - paramInt);
      }
    }
    else {
      return;
    }
    throw FormatException.getFormatInstance();
  }
  
  public DecoderResult decode(BitMatrix paramBitMatrix)
    throws FormatException, ChecksumException
  {
    paramBitMatrix = new BitMatrixParser(paramBitMatrix);
    int[] arrayOfInt = paramBitMatrix.readCodewords();
    if (arrayOfInt.length == 0) {
      throw FormatException.getFormatInstance();
    }
    int i = 1 << paramBitMatrix.getECLevel() + 1;
    correctErrors(arrayOfInt, paramBitMatrix.getErasures(), i);
    verifyCodewordCount(arrayOfInt, i);
    return DecodedBitStreamParser.decode(arrayOfInt);
  }
  
  public DecoderResult decode(boolean[][] paramArrayOfBoolean)
    throws FormatException, ChecksumException
  {
    int k = paramArrayOfBoolean.length;
    BitMatrix localBitMatrix = new BitMatrix(k);
    int i = 0;
    while (i < k)
    {
      int j = 0;
      while (j < k)
      {
        if (paramArrayOfBoolean[j][i] != 0) {
          localBitMatrix.set(j, i);
        }
        j += 1;
      }
      i += 1;
    }
    return decode(localBitMatrix);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.pdf417.decoder.Decoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */