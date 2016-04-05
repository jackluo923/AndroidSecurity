package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class GenericMultipleBarcodeReader
  implements MultipleBarcodeReader
{
  private static final int MIN_DIMENSION_TO_RECUR = 100;
  private final Reader delegate;
  
  public GenericMultipleBarcodeReader(Reader paramReader)
  {
    delegate = paramReader;
  }
  
  private void doDecodeMultiple(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap, List<Result> paramList, int paramInt1, int paramInt2)
  {
    int j;
    int k;
    float f1;
    do
    {
      Object localObject;
      Iterator localIterator;
      do
      {
        try
        {
          localObject = delegate.decode(paramBinaryBitmap, paramMap);
          j = 0;
          localIterator = paramList.iterator();
          do
          {
            i = j;
            if (!localIterator.hasNext()) {
              break;
            }
          } while (!((Result)localIterator.next()).getText().equals(((Result)localObject).getText()));
          i = 1;
          if (i != 0) {
            return;
          }
        }
        catch (ReaderException paramBinaryBitmap)
        {
          return;
        }
        paramList.add(translateResultPoints((Result)localObject, paramInt1, paramInt2));
        localObject = ((Result)localObject).getResultPoints();
      } while ((localObject == null) || (localObject.length == 0));
      j = paramBinaryBitmap.getWidth();
      k = paramBinaryBitmap.getHeight();
      float f8 = j;
      float f5 = k;
      float f4 = 0.0F;
      f1 = 0.0F;
      int m = localObject.length;
      int i = 0;
      while (i < m)
      {
        localIterator = localObject[i];
        float f7 = localIterator.getX();
        float f2 = localIterator.getY();
        float f3 = f8;
        if (f7 < f8) {
          f3 = f7;
        }
        float f6 = f5;
        if (f2 < f5) {
          f6 = f2;
        }
        f5 = f4;
        if (f7 > f4) {
          f5 = f7;
        }
        f7 = f1;
        if (f2 > f1) {
          f7 = f2;
        }
        i += 1;
        f4 = f5;
        f1 = f7;
        f8 = f3;
        f5 = f6;
      }
      if (f8 > 100.0F) {
        doDecodeMultiple(paramBinaryBitmap.crop(0, 0, (int)f8, k), paramMap, paramList, paramInt1, paramInt2);
      }
      if (f5 > 100.0F) {
        doDecodeMultiple(paramBinaryBitmap.crop(0, 0, j, (int)f5), paramMap, paramList, paramInt1, paramInt2);
      }
      if (f4 < j - 100) {
        doDecodeMultiple(paramBinaryBitmap.crop((int)f4, 0, j - (int)f4, k), paramMap, paramList, paramInt1 + (int)f4, paramInt2);
      }
    } while (f1 >= k - 100);
    doDecodeMultiple(paramBinaryBitmap.crop(0, (int)f1, j, k - (int)f1), paramMap, paramList, paramInt1, paramInt2 + (int)f1);
  }
  
  private static Result translateResultPoints(Result paramResult, int paramInt1, int paramInt2)
  {
    ResultPoint[] arrayOfResultPoint1 = paramResult.getResultPoints();
    if (arrayOfResultPoint1 == null) {
      return paramResult;
    }
    ResultPoint[] arrayOfResultPoint2 = new ResultPoint[arrayOfResultPoint1.length];
    int i = 0;
    while (i < arrayOfResultPoint1.length)
    {
      ResultPoint localResultPoint = arrayOfResultPoint1[i];
      arrayOfResultPoint2[i] = new ResultPoint(localResultPoint.getX() + paramInt1, localResultPoint.getY() + paramInt2);
      i += 1;
    }
    return new Result(paramResult.getText(), paramResult.getRawBytes(), arrayOfResultPoint2, paramResult.getBarcodeFormat());
  }
  
  public Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException
  {
    return decodeMultiple(paramBinaryBitmap, null);
  }
  
  public Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    ArrayList localArrayList = new ArrayList();
    doDecodeMultiple(paramBinaryBitmap, paramMap, localArrayList, 0, 0);
    if (localArrayList.isEmpty()) {
      throw NotFoundException.getNotFoundInstance();
    }
    return (Result[])localArrayList.toArray(new Result[localArrayList.size()]);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.multi.GenericMultipleBarcodeReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */