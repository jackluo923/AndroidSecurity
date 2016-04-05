package com.google.zxing.client.result;

import com.google.zxing.Result;

public final class AddressBookDoCoMoResultParser
  extends AbstractDoCoMoResultParser
{
  private static String parseName(String paramString)
  {
    int i = paramString.indexOf(',');
    String str = paramString;
    if (i >= 0) {
      str = paramString.substring(i + 1) + ' ' + paramString.substring(0, i);
    }
    return str;
  }
  
  public AddressBookParsedResult parse(Result paramResult)
  {
    String str2 = getMassagedText(paramResult);
    if (!str2.startsWith("MECARD:")) {
      return null;
    }
    paramResult = matchDoCoMoPrefixedField("N:", str2, true);
    if (paramResult == null) {
      return null;
    }
    String str3 = parseName(paramResult[0]);
    String str4 = matchSingleDoCoMoPrefixedField("SOUND:", str2, true);
    String[] arrayOfString1 = matchDoCoMoPrefixedField("TEL:", str2, true);
    String[] arrayOfString2 = matchDoCoMoPrefixedField("EMAIL:", str2, true);
    String str5 = matchSingleDoCoMoPrefixedField("NOTE:", str2, false);
    String[] arrayOfString3 = matchDoCoMoPrefixedField("ADR:", str2, true);
    String str1 = matchSingleDoCoMoPrefixedField("BDAY:", str2, true);
    paramResult = str1;
    if (str1 != null)
    {
      paramResult = str1;
      if (!isStringOfDigits(str1, 8)) {
        paramResult = null;
      }
    }
    str1 = matchSingleDoCoMoPrefixedField("URL:", str2, true);
    str2 = matchSingleDoCoMoPrefixedField("ORG:", str2, true);
    return new AddressBookParsedResult(maybeWrap(str3), str4, arrayOfString1, null, arrayOfString2, null, null, str5, arrayOfString3, null, str2, paramResult, null, str1);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.AddressBookDoCoMoResultParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */