package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;

final class AI013103decoder
  extends AI013x0xDecoder
{
  AI013103decoder(BitArray paramBitArray)
  {
    super(paramBitArray);
  }
  
  protected void addWeightCode(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append("(3103)");
  }
  
  protected int checkWeight(int paramInt)
  {
    return paramInt;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.AI013103decoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */