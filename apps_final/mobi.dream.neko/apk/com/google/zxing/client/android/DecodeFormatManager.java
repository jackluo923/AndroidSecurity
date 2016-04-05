package com.google.zxing.client.android;

import android.content.Intent;
import android.net.Uri;
import com.google.zxing.BarcodeFormat;
import java.util.Arrays;
import java.util.Collection;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

final class DecodeFormatManager
{
  private static final Pattern COMMA_PATTERN = Pattern.compile(",");
  static final Collection<BarcodeFormat> DATA_MATRIX_FORMATS;
  static final Collection<BarcodeFormat> ONE_D_FORMATS;
  static final Collection<BarcodeFormat> PRODUCT_FORMATS;
  static final Collection<BarcodeFormat> QR_CODE_FORMATS = EnumSet.of(BarcodeFormat.QR_CODE);
  
  static
  {
    DATA_MATRIX_FORMATS = EnumSet.of(BarcodeFormat.DATA_MATRIX);
    PRODUCT_FORMATS = EnumSet.of(BarcodeFormat.UPC_A, BarcodeFormat.UPC_E, BarcodeFormat.EAN_13, BarcodeFormat.EAN_8, BarcodeFormat.RSS_14);
    ONE_D_FORMATS = EnumSet.of(BarcodeFormat.CODE_39, BarcodeFormat.CODE_93, BarcodeFormat.CODE_128, BarcodeFormat.ITF, BarcodeFormat.CODABAR);
    ONE_D_FORMATS.addAll(PRODUCT_FORMATS);
  }
  
  static Collection<BarcodeFormat> parseDecodeFormats(Intent paramIntent)
  {
    List localList = null;
    String str = paramIntent.getStringExtra("SCAN_FORMATS");
    if (str != null) {
      localList = Arrays.asList(COMMA_PATTERN.split(str));
    }
    return parseDecodeFormats(localList, paramIntent.getStringExtra("SCAN_MODE"));
  }
  
  static Collection<BarcodeFormat> parseDecodeFormats(Uri paramUri)
  {
    List localList2 = paramUri.getQueryParameters("SCAN_FORMATS");
    List localList1 = localList2;
    if (localList2 != null)
    {
      localList1 = localList2;
      if (localList2.size() == 1)
      {
        localList1 = localList2;
        if (localList2.get(0) != null) {
          localList1 = Arrays.asList(COMMA_PATTERN.split((CharSequence)localList2.get(0)));
        }
      }
    }
    return parseDecodeFormats(localList1, paramUri.getQueryParameter("SCAN_MODE"));
  }
  
  private static Collection<BarcodeFormat> parseDecodeFormats(Iterable<String> paramIterable, String paramString)
  {
    if (paramIterable != null)
    {
      EnumSet localEnumSet = EnumSet.noneOf(BarcodeFormat.class);
      try
      {
        Iterator localIterator = paramIterable.iterator();
        for (;;)
        {
          paramIterable = localEnumSet;
          if (!localIterator.hasNext()) {
            break;
          }
          localEnumSet.add(BarcodeFormat.valueOf((String)localIterator.next()));
        }
        if (paramString == null) {
          break label109;
        }
      }
      catch (IllegalArgumentException paramIterable) {}
    }
    else
    {
      if (!"PRODUCT_MODE".equals(paramString)) {
        break label70;
      }
      paramIterable = PRODUCT_FORMATS;
    }
    return paramIterable;
    label70:
    if ("QR_CODE_MODE".equals(paramString)) {
      return QR_CODE_FORMATS;
    }
    if ("DATA_MATRIX_MODE".equals(paramString)) {
      return DATA_MATRIX_FORMATS;
    }
    if ("ONE_D_MODE".equals(paramString)) {
      return ONE_D_FORMATS;
    }
    label109:
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.DecodeFormatManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */