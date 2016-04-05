package com.google.zxing.client.android.encode;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class MECARDContactEncoder$1
  implements Formatter
{
  public String format(String paramString)
  {
    return MECARDContactEncoder.access$100().matcher(MECARDContactEncoder.access$000().matcher(paramString).replaceAll("\\\\$1")).replaceAll("");
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.encode.MECARDContactEncoder.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */