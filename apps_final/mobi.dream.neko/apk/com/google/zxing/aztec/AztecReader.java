package com.google.zxing.aztec;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.aztec.decoder.Decoder;
import com.google.zxing.aztec.detector.Detector;
import com.google.zxing.common.DecoderResult;
import java.util.Map;

public final class AztecReader
  implements Reader
{
  public Result decode(BinaryBitmap paramBinaryBitmap)
    throws NotFoundException, FormatException
  {
    return decode(paramBinaryBitmap, null);
  }
  
  public Result decode(BinaryBitmap paramBinaryBitmap, Map<DecodeHintType, ?> paramMap)
    throws NotFoundException, FormatException
  {
    Object localObject = new Detector(paramBinaryBitmap.getBlackMatrix()).detect();
    paramBinaryBitmap = ((AztecDetectorResult)localObject).getPoints();
    if (paramMap != null)
    {
      paramMap = (ResultPointCallback)paramMap.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK);
      if (paramMap != null)
      {
        int j = paramBinaryBitmap.length;
        int i = 0;
        while (i < j)
        {
          paramMap.foundPossibleResultPoint(paramBinaryBitmap[i]);
          i += 1;
        }
      }
    }
    paramMap = new Decoder().decode((AztecDetectorResult)localObject);
    paramBinaryBitmap = new Result(paramMap.getText(), paramMap.getRawBytes(), paramBinaryBitmap, BarcodeFormat.AZTEC);
    localObject = paramMap.getByteSegments();
    if (localObject != null) {
      paramBinaryBitmap.putMetadata(ResultMetadataType.BYTE_SEGMENTS, localObject);
    }
    paramMap = paramMap.getECLevel();
    if (paramMap != null) {
      paramBinaryBitmap.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, paramMap);
    }
    return paramBinaryBitmap;
  }
  
  public void reset() {}
}

/* Location:
 * Qualified Name:     com.google.zxing.aztec.AztecReader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */