package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.util.Map;

public final class EmailAddressResultParser
  extends ResultParser
{
  public EmailAddressParsedResult parse(Result paramResult)
  {
    Object localObject = null;
    String str3 = getMassagedText(paramResult);
    if ((str3.startsWith("mailto:")) || (str3.startsWith("MAILTO:")))
    {
      localObject = str3.substring(7);
      int i = ((String)localObject).indexOf('?');
      paramResult = (Result)localObject;
      if (i >= 0) {
        paramResult = ((String)localObject).substring(0, i);
      }
      Map localMap = parseNameValuePairs(str3);
      String str1 = null;
      String str2 = null;
      localObject = paramResult;
      if (localMap != null)
      {
        localObject = paramResult;
        if (paramResult.length() == 0) {
          localObject = (String)localMap.get("to");
        }
        str1 = (String)localMap.get("subject");
        str2 = (String)localMap.get("body");
      }
      paramResult = new EmailAddressParsedResult((String)localObject, str1, str2, str3);
    }
    do
    {
      return paramResult;
      paramResult = (Result)localObject;
    } while (!EmailDoCoMoResultParser.isBasicallyValidEmailAddress(str3));
    return new EmailAddressParsedResult(str3, null, null, "mailto:" + str3);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.EmailAddressResultParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */