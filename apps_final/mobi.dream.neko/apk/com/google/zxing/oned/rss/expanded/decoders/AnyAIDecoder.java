package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

final class AnyAIDecoder
  extends AbstractExpandedDecoder
{
  private static final int HEADER_SIZE = 5;
  
  AnyAIDecoder(BitArray paramBitArray)
  {
    super(paramBitArray);
  }
  
  public String parseInformation()
    throws NotFoundException
  {
    StringBuilder localStringBuilder = new StringBuilder();
    return getGeneralDecoder().decodeAllCodes(localStringBuilder, 5);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.AnyAIDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */