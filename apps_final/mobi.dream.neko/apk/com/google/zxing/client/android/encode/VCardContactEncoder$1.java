package com.google.zxing.client.android.encode;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class VCardContactEncoder$1
  implements Formatter
{
  public String format(String paramString)
  {
    return VCardContactEncoder.access$100().matcher(VCardContactEncoder.access$000().matcher(paramString).replaceAll("\\\\$1")).replaceAll("");
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.encode.VCardContactEncoder.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */