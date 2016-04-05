package com.squareup.okhttp.internal.http;

final class HeaderParser
{
  public static void parseCacheControl(String paramString, CacheControlHandler paramCacheControlHandler)
  {
    int i = 0;
    while (i < paramString.length())
    {
      int j = skipUntil(paramString, i, "=,");
      String str2 = paramString.substring(i, j).trim();
      if ((j == paramString.length()) || (paramString.charAt(j) == ','))
      {
        i = j + 1;
        paramCacheControlHandler.handle(str2, null);
      }
      else
      {
        j = skipWhitespace(paramString, j + 1);
        String str1;
        if ((j < paramString.length()) && (paramString.charAt(j) == '"'))
        {
          i = j + 1;
          j = skipUntil(paramString, i, "\"");
          str1 = paramString.substring(i, j);
          i = j + 1;
        }
        for (;;)
        {
          paramCacheControlHandler.handle(str2, str1);
          break;
          i = skipUntil(paramString, j, ",");
          str1 = paramString.substring(j, i).trim();
        }
      }
    }
  }
  
  public static int parseSeconds(String paramString)
  {
    try
    {
      long l = Long.parseLong(paramString);
      if (l > 2147483647L) {
        return Integer.MAX_VALUE;
      }
      if (l < 0L) {
        return 0;
      }
      return (int)l;
    }
    catch (NumberFormatException paramString) {}
    return -1;
  }
  
  public static int skipUntil(String paramString1, int paramInt, String paramString2)
  {
    for (;;)
    {
      if ((paramInt >= paramString1.length()) || (paramString2.indexOf(paramString1.charAt(paramInt)) != -1)) {
        return paramInt;
      }
      paramInt += 1;
    }
  }
  
  public static int skipWhitespace(String paramString, int paramInt)
  {
    for (;;)
    {
      if (paramInt < paramString.length())
      {
        int i = paramString.charAt(paramInt);
        if ((i == 32) || (i == 9)) {}
      }
      else
      {
        return paramInt;
      }
      paramInt += 1;
    }
  }
  
  public static abstract interface CacheControlHandler
  {
    public abstract void handle(String paramString1, String paramString2);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HeaderParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */