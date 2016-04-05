package com.google.zxing.oned.rss.expanded.decoders;

import com.google.zxing.common.BitArray;

final class AI01320xDecoder
  extends AI013x0xDecoder
{
  AI01320xDecoder(BitArray paramBitArray)
  {
    super(paramBitArray);
  }
  
  protected void addWeightCode(StringBuilder paramStringBuilder, int paramInt)
  {
    if (paramInt < 10000)
    {
      paramStringBuilder.append("(3202)");
      return;
    }
    paramStringBuilder.append("(3203)");
  }
  
  protected int checkWeight(int paramInt)
  {
    if (paramInt < 10000) {
      return paramInt;
    }
    return paramInt - 10000;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.AI01320xDecoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */