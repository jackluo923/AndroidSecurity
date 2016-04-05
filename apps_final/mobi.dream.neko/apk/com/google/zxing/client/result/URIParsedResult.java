package com.google.zxing.client.result;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class URIParsedResult
  extends ParsedResult
{
  private static final Pattern USER_IN_HOST = Pattern.compile(":/*([^/@]+)@[^/]+");
  private final String title;
  private final String uri;
  
  public URIParsedResult(String paramString1, String paramString2)
  {
    super(ParsedResultType.URI);
    uri = massageURI(paramString1);
    title = paramString2;
  }
  
  private static boolean isColonFollowedByPortNumber(String paramString, int paramInt)
  {
    int j = paramString.indexOf('/', paramInt + 1);
    int i = j;
    if (j < 0) {
      i = paramString.length();
    }
    if (i <= paramInt + 1) {
      return false;
    }
    paramInt += 1;
    for (;;)
    {
      if (paramInt >= i) {
        break label66;
      }
      if ((paramString.charAt(paramInt) < '0') || (paramString.charAt(paramInt) > '9')) {
        break;
      }
      paramInt += 1;
    }
    label66:
    return true;
  }
  
  private static String massageURI(String paramString)
  {
    String str = paramString.trim();
    int i = str.indexOf(':');
    if (i < 0) {
      paramString = "http://" + str;
    }
    do
    {
      return paramString;
      paramString = str;
    } while (!isColonFollowedByPortNumber(str, i));
    return "http://" + str;
  }
  
  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(30);
    maybeAppend(title, localStringBuilder);
    maybeAppend(uri, localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public String getTitle()
  {
    return title;
  }
  
  public String getURI()
  {
    return uri;
  }
  
  public boolean isPossiblyMaliciousURI()
  {
    return USER_IN_HOST.matcher(uri).find();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.URIParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */