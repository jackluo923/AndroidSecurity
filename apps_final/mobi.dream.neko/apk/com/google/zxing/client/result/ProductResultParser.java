package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.oned.UPCEReader;

public final class ProductResultParser
  extends ResultParser
{
  public ProductParsedResult parse(Result paramResult)
  {
    BarcodeFormat localBarcodeFormat = paramResult.getBarcodeFormat();
    if ((localBarcodeFormat != BarcodeFormat.UPC_A) && (localBarcodeFormat != BarcodeFormat.UPC_E) && (localBarcodeFormat != BarcodeFormat.EAN_8) && (localBarcodeFormat != BarcodeFormat.EAN_13)) {
      return null;
    }
    String str = getMassagedText(paramResult);
    int j = str.length();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label87;
      }
      int k = str.charAt(i);
      if ((k < 48) || (k > 57)) {
        break;
      }
      i += 1;
    }
    label87:
    if (localBarcodeFormat == BarcodeFormat.UPC_E) {}
    for (paramResult = UPCEReader.convertUPCEtoUPCA(str);; paramResult = str) {
      return new ProductParsedResult(str, paramResult);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.ProductResultParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */