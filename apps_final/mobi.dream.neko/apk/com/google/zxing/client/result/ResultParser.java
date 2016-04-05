package com.google.zxing.client.result;

import com.google.zxing.Result;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public abstract class ResultParser
{
  private static final Pattern ALPHANUM = Pattern.compile("[a-zA-Z0-9]*");
  private static final Pattern AMPERSAND = Pattern.compile("&");
  private static final String BYTE_ORDER_MARK = "﻿";
  private static final Pattern DIGITS;
  private static final Pattern EQUALS = Pattern.compile("=");
  private static final ResultParser[] PARSERS = { new BookmarkDoCoMoResultParser(), new AddressBookDoCoMoResultParser(), new EmailDoCoMoResultParser(), new AddressBookAUResultParser(), new VCardResultParser(), new BizcardResultParser(), new VEventResultParser(), new EmailAddressResultParser(), new SMTPResultParser(), new TelResultParser(), new SMSMMSResultParser(), new SMSTOMMSTOResultParser(), new GeoResultParser(), new WifiResultParser(), new URLTOResultParser(), new URIResultParser(), new ISBNResultParser(), new ProductResultParser(), new ExpandedProductResultParser() };
  
  static
  {
    DIGITS = Pattern.compile("\\d*");
  }
  
  private static void appendKeyValue(CharSequence paramCharSequence, Map<String, String> paramMap)
  {
    Object localObject = EQUALS.split(paramCharSequence, 2);
    if (localObject.length == 2)
    {
      paramCharSequence = localObject[0];
      localObject = localObject[1];
    }
    try
    {
      paramMap.put(paramCharSequence, URLDecoder.decode((String)localObject, "UTF-8"));
      return;
    }
    catch (UnsupportedEncodingException paramCharSequence)
    {
      throw new IllegalStateException(paramCharSequence);
    }
    catch (IllegalArgumentException paramCharSequence) {}
  }
  
  protected static String getMassagedText(Result paramResult)
  {
    String str = paramResult.getText();
    paramResult = str;
    if (str.startsWith("﻿")) {
      paramResult = str.substring(1);
    }
    return paramResult;
  }
  
  protected static boolean isStringOfDigits(CharSequence paramCharSequence, int paramInt)
  {
    return (paramCharSequence != null) && (paramInt == paramCharSequence.length()) && (DIGITS.matcher(paramCharSequence).matches());
  }
  
  protected static boolean isSubstringOfAlphaNumeric(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramCharSequence == null) {}
    do
    {
      return false;
      paramInt2 = paramInt1 + paramInt2;
    } while ((paramCharSequence.length() < paramInt2) || (!ALPHANUM.matcher(paramCharSequence.subSequence(paramInt1, paramInt2)).matches()));
    return true;
  }
  
  protected static boolean isSubstringOfDigits(CharSequence paramCharSequence, int paramInt1, int paramInt2)
  {
    if (paramCharSequence == null) {}
    do
    {
      return false;
      paramInt2 = paramInt1 + paramInt2;
    } while ((paramCharSequence.length() < paramInt2) || (!DIGITS.matcher(paramCharSequence.subSequence(paramInt1, paramInt2)).matches()));
    return true;
  }
  
  static String[] matchPrefixedField(String paramString1, String paramString2, char paramChar, boolean paramBoolean)
  {
    Object localObject1 = null;
    int i = 0;
    int n = paramString2.length();
    if (i < n)
    {
      i = paramString2.indexOf(paramString1, i);
      if (i >= 0) {}
    }
    else
    {
      if ((localObject1 != null) && (!((List)localObject1).isEmpty())) {
        break label208;
      }
      return null;
    }
    int m = i + paramString1.length();
    int j = 1;
    Object localObject2 = localObject1;
    i = m;
    for (;;)
    {
      int k = i;
      i = k;
      localObject1 = localObject2;
      if (j == 0) {
        break;
      }
      i = paramString2.indexOf(paramChar, k);
      if (i < 0)
      {
        i = paramString2.length();
        j = 0;
      }
      else if (paramString2.charAt(i - 1) == '\\')
      {
        i += 1;
      }
      else
      {
        localObject1 = localObject2;
        if (localObject2 == null) {
          localObject1 = new ArrayList(3);
        }
        String str = unescapeBackslash(paramString2.substring(m, i));
        localObject2 = str;
        if (paramBoolean) {
          localObject2 = str.trim();
        }
        ((List)localObject1).add(localObject2);
        i += 1;
        j = 0;
        localObject2 = localObject1;
      }
    }
    label208:
    return (String[])((List)localObject1).toArray(new String[((List)localObject1).size()]);
  }
  
  static String matchSinglePrefixedField(String paramString1, String paramString2, char paramChar, boolean paramBoolean)
  {
    paramString1 = matchPrefixedField(paramString1, paramString2, paramChar, paramBoolean);
    if (paramString1 == null) {
      return null;
    }
    return paramString1[0];
  }
  
  protected static void maybeAppend(String paramString, StringBuilder paramStringBuilder)
  {
    if (paramString != null)
    {
      paramStringBuilder.append('\n');
      paramStringBuilder.append(paramString);
    }
  }
  
  protected static void maybeAppend(String[] paramArrayOfString, StringBuilder paramStringBuilder)
  {
    if (paramArrayOfString != null)
    {
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = paramArrayOfString[i];
        paramStringBuilder.append('\n');
        paramStringBuilder.append(str);
        i += 1;
      }
    }
  }
  
  protected static String[] maybeWrap(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return new String[] { paramString };
  }
  
  protected static int parseHexDigit(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9')) {
      return paramChar - '0';
    }
    if ((paramChar >= 'a') && (paramChar <= 'f')) {
      return paramChar - 'a' + 10;
    }
    if ((paramChar >= 'A') && (paramChar <= 'F')) {
      return paramChar - 'A' + 10;
    }
    return -1;
  }
  
  static Map<String, String> parseNameValuePairs(String paramString)
  {
    int i = paramString.indexOf('?');
    if (i < 0)
    {
      paramString = null;
      return paramString;
    }
    HashMap localHashMap = new HashMap(3);
    String[] arrayOfString = AMPERSAND.split(paramString.substring(i + 1));
    int j = arrayOfString.length;
    i = 0;
    for (;;)
    {
      paramString = localHashMap;
      if (i >= j) {
        break;
      }
      appendKeyValue(arrayOfString[i], localHashMap);
      i += 1;
    }
  }
  
  public static ParsedResult parseResult(Result paramResult)
  {
    ResultParser[] arrayOfResultParser = PARSERS;
    int j = arrayOfResultParser.length;
    int i = 0;
    while (i < j)
    {
      ParsedResult localParsedResult = arrayOfResultParser[i].parse(paramResult);
      if (localParsedResult != null) {
        return localParsedResult;
      }
      i += 1;
    }
    return new TextParsedResult(paramResult.getText(), null);
  }
  
  protected static String unescapeBackslash(String paramString)
  {
    int j = paramString.indexOf('\\');
    if (j < 0) {
      return paramString;
    }
    int k = paramString.length();
    StringBuilder localStringBuilder = new StringBuilder(k - 1);
    localStringBuilder.append(paramString.toCharArray(), 0, j);
    int i = 0;
    if (j < k)
    {
      char c = paramString.charAt(j);
      if ((i != 0) || (c != '\\')) {
        localStringBuilder.append(c);
      }
      for (i = 0;; i = 1)
      {
        j += 1;
        break;
      }
    }
    return localStringBuilder.toString();
  }
  
  public abstract ParsedResult parse(Result paramResult);
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.ResultParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */