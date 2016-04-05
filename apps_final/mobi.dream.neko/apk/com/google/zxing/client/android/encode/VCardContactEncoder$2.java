package com.google.zxing.client.android.encode;

import android.telephony.PhoneNumberUtils;

class VCardContactEncoder$2
  implements Formatter
{
  VCardContactEncoder$2(VCardContactEncoder paramVCardContactEncoder) {}
  
  public String format(String paramString)
  {
    return PhoneNumberUtils.formatNumber(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.encode.VCardContactEncoder.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */