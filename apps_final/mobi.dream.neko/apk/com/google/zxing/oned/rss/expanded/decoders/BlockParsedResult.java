package com.google.zxing.oned.rss.expanded.decoders;

final class BlockParsedResult
{
  private final DecodedInformation decodedInformation;
  private final boolean finished;
  
  BlockParsedResult(DecodedInformation paramDecodedInformation, boolean paramBoolean)
  {
    finished = paramBoolean;
    decodedInformation = paramDecodedInformation;
  }
  
  BlockParsedResult(boolean paramBoolean)
  {
    this(null, paramBoolean);
  }
  
  DecodedInformation getDecodedInformation()
  {
    return decodedInformation;
  }
  
  boolean isFinished()
  {
    return finished;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.BlockParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */