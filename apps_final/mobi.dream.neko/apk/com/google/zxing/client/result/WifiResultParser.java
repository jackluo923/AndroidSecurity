package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class WifiResultParser
  extends ResultParser
{
  public WifiParsedResult parse(Result paramResult)
  {
    String str2 = getMassagedText(paramResult);
    if (!str2.startsWith("WIFI:")) {}
    String str3;
    do
    {
      return null;
      str3 = matchSinglePrefixedField("S:", str2, ';', false);
    } while ((str3 == null) || (str3.length() == 0));
    String str4 = matchSinglePrefixedField("P:", str2, ';', false);
    String str1 = matchSinglePrefixedField("T:", str2, ';', false);
    paramResult = str1;
    if (str1 == null) {
      paramResult = "nopass";
    }
    return new WifiParsedResult(paramResult, str3, str4, Boolean.parseBoolean(matchSinglePrefixedField("B:", str2, ';', false)));
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.WifiResultParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */