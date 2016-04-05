package com.google.zxing.oned;

import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.BitArray;

final class UPCEANExtensionSupport
{
  private static final int[] EXTENSION_START_PATTERN = { 1, 1, 2 };
  private final UPCEANExtension5Support fiveSupport = new UPCEANExtension5Support();
  private final UPCEANExtension2Support twoSupport = new UPCEANExtension2Support();
  
  Result decodeRow(int paramInt1, BitArray paramBitArray, int paramInt2)
    throws NotFoundException
  {
    int[] arrayOfInt = UPCEANReader.findGuardPattern(paramBitArray, paramInt2, false, EXTENSION_START_PATTERN);
    try
    {
      Result localResult = fiveSupport.decodeRow(paramInt1, paramBitArray, arrayOfInt);
      return localResult;
    }
    catch (ReaderException localReaderException) {}
    return twoSupport.decodeRow(paramInt1, paramBitArray, arrayOfInt);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.UPCEANExtensionSupport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */