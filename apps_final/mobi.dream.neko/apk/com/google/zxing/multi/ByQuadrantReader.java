package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import java.util.Map;

public final class ByQuadrantReader
  implements Reader
{
  private final Reader delegate;
  
  public ByQuadrantReader(Reader paramReader)
  {
    delegate = paramReader;
  }
  
  public Result decode(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException, ChecksumException, FormatException
  {
    return decode(paramBinaryBitmap, null);
  }
  
  public Result decode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, ChecksumException, FormatException
  {
    int j = paramBinaryBitmap.getWidth();
    int i = paramBinaryBitmap.getHeight();
    j /= 2;
    i /= 2;
    Object localObject1 = paramBinaryBitmap.crop(0, 0, j, i);
    try
    {
      localObject1 = delegate.decode((BinaryBitmap)localObject1, paramMap);
      return (Result)localObject1;
    }
    catch (NotFoundException localNotFoundException1)
    {
      Object localObject2 = paramBinaryBitmap.crop(j, 0, j, i);
      try
      {
        localObject2 = delegate.decode((BinaryBitmap)localObject2, paramMap);
        return (Result)localObject2;
      }
      catch (NotFoundException localNotFoundException2)
      {
        Object localObject3 = paramBinaryBitmap.crop(0, i, j, i);
        try
        {
          localObject3 = delegate.decode((BinaryBitmap)localObject3, paramMap);
          return (Result)localObject3;
        }
        catch (NotFoundException localNotFoundException3)
        {
          Object localObject4 = paramBinaryBitmap.crop(j, i, j, i);
          try
          {
            localObject4 = delegate.decode((BinaryBitmap)localObject4, paramMap);
            return (Result)localObject4;
          }
          catch (NotFoundException localNotFoundException4)
          {
            paramBinaryBitmap = paramBinaryBitmap.crop(j / 2, i / 2, j, i);
          }
        }
      }
    }
    return delegate.decode(paramBinaryBitmap, paramMap);
  }
  
  public void reset()
  {
    delegate.reset();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.multi.ByQuadrantReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */