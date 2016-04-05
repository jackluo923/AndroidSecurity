package com.google.zxing.client.android.encode;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

class MECARDContactEncoder$2
  implements Formatter
{
  MECARDContactEncoder$2(MECARDContactEncoder paramMECARDContactEncoder) {}
  
  public String format(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return MECARDContactEncoder.access$200().matcher(paramString).replaceAll("");
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.encode.MECARDContactEncoder.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */