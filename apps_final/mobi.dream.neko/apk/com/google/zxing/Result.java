package com.google.zxing;

import java.util.EnumMap;
import java.util.Map;

public final class Result
{
  private final BarcodeFormat format;
  private final byte[] rawBytes;
  private Map<ResultMetadataType, Object> resultMetadata;
  private ResultPoint[] resultPoints;
  private final String text;
  private final long timestamp;
  
  public Result(String paramString, byte[] paramArrayOfByte, ResultPoint[] paramArrayOfResultPoint, BarcodeFormat paramBarcodeFormat)
  {
    this(paramString, paramArrayOfByte, paramArrayOfResultPoint, paramBarcodeFormat, System.currentTimeMillis());
  }
  
  public Result(String paramString, byte[] paramArrayOfByte, ResultPoint[] paramArrayOfResultPoint, BarcodeFormat paramBarcodeFormat, long paramLong)
  {
    text = paramString;
    rawBytes = paramArrayOfByte;
    resultPoints = paramArrayOfResultPoint;
    format = paramBarcodeFormat;
    resultMetadata = null;
    timestamp = paramLong;
  }
  
  public void addResultPoints(ResultPoint[] paramArrayOfResultPoint)
  {
    ResultPoint[] arrayOfResultPoint1 = resultPoints;
    if (arrayOfResultPoint1 == null) {
      resultPoints = paramArrayOfResultPoint;
    }
    while ((paramArrayOfResultPoint == null) || (paramArrayOfResultPoint.length <= 0)) {
      return;
    }
    ResultPoint[] arrayOfResultPoint2 = new ResultPoint[arrayOfResultPoint1.length + paramArrayOfResultPoint.length];
    System.arraycopy(arrayOfResultPoint1, 0, arrayOfResultPoint2, 0, arrayOfResultPoint1.length);
    System.arraycopy(paramArrayOfResultPoint, 0, arrayOfResultPoint2, arrayOfResultPoint1.length, paramArrayOfResultPoint.length);
    resultPoints = arrayOfResultPoint2;
  }
  
  public BarcodeFormat getBarcodeFormat()
  {
    return format;
  }
  
  public byte[] getRawBytes()
  {
    return rawBytes;
  }
  
  public Map<ResultMetadataType, Object> getResultMetadata()
  {
    return resultMetadata;
  }
  
  public ResultPoint[] getResultPoints()
  {
    return resultPoints;
  }
  
  public String getText()
  {
    return text;
  }
  
  public long getTimestamp()
  {
    return timestamp;
  }
  
  public void putAllMetadata(Map<ResultMetadataType, Object> paramMap)
  {
    if (paramMap != null)
    {
      if (resultMetadata == null) {
        resultMetadata = paramMap;
      }
    }
    else {
      return;
    }
    resultMetadata.putAll(paramMap);
  }
  
  public void putMetadata(ResultMetadataType paramResultMetadataType, Object paramObject)
  {
    if (resultMetadata == null) {
      resultMetadata = new EnumMap(ResultMetadataType.class);
    }
    resultMetadata.put(paramResultMetadataType, paramObject);
  }
  
  public String toString()
  {
    return text;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.Result
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */