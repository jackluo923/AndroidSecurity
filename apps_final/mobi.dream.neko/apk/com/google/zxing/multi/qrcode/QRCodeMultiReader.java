package com.google.zxing.multi.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.multi.MultipleBarcodeReader;
import com.google.zxing.multi.qrcode.detector.MultiDetector;
import com.google.zxing.qrcode.QRCodeReader;
import com.google.zxing.qrcode.decoder.Decoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class QRCodeMultiReader
  extends QRCodeReader
  implements MultipleBarcodeReader
{
  private static final Result[] EMPTY_RESULT_ARRAY = new Result[0];
  
  public Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException
  {
    return decodeMultiple(paramBinaryBitmap, null);
  }
  
  public Result[] decodeMultiple(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException
  {
    ArrayList localArrayList = new ArrayList();
    paramBinaryBitmap = new MultiDetector(paramBinaryBitmap.getBlackMatrix()).detectMulti(paramMap);
    int j = paramBinaryBitmap.length;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = paramBinaryBitmap[i];
      try
      {
        Object localObject1 = getDecoder().decode(((DetectorResult)localObject2).getBits(), paramMap);
        localObject2 = ((DetectorResult)localObject2).getPoints();
        localObject2 = new Result(((DecoderResult)localObject1).getText(), ((DecoderResult)localObject1).getRawBytes(), (ResultPoint[])localObject2, BarcodeFormat.QR_CODE);
        List localList = ((DecoderResult)localObject1).getByteSegments();
        if (localList != null) {
          ((Result)localObject2).putMetadata(ResultMetadataType.BYTE_SEGMENTS, localList);
        }
        localObject1 = ((DecoderResult)localObject1).getECLevel();
        if (localObject1 != null) {
          ((Result)localObject2).putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, localObject1);
        }
        localArrayList.add(localObject2);
      }
      catch (ReaderException localReaderException)
      {
        for (;;) {}
      }
      i += 1;
    }
    if (localArrayList.isEmpty()) {
      return EMPTY_RESULT_ARRAY;
    }
    return (Result[])localArrayList.toArray(new Result[localArrayList.size()]);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.multi.qrcode.QRCodeMultiReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */