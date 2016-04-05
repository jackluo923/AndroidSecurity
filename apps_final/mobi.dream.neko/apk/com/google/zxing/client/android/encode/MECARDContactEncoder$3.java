package com.google.zxing.client.android.encode;

import android.telephony.PhoneNumberUtils;

class MECARDContactEncoder$3
  implements Formatter
{
  MECARDContactEncoder$3(MECARDContactEncoder paramMECARDContactEncoder) {}
  
  public String format(String paramString)
  {
    return PhoneNumberUtils.formatNumber(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.encode.MECARDContactEncoder.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */