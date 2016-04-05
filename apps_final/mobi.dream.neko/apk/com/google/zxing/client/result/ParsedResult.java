package com.google.zxing.client.result;

public abstract class ParsedResult
{
  private final ParsedResultType type;
  
  protected ParsedResult(ParsedResultType paramParsedResultType)
  {
    type = paramParsedResultType;
  }
  
  public static void maybeAppend(String paramString, StringBuilder paramStringBuilder)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      if (paramStringBuilder.length() > 0) {
        paramStringBuilder.append('\n');
      }
      paramStringBuilder.append(paramString);
    }
  }
  
  public static void maybeAppend(String[] paramArrayOfString, StringBuilder paramStringBuilder)
  {
    if (paramArrayOfString != null)
    {
      int j = paramArrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = paramArrayOfString[i];
        if ((str != null) && (str.length() > 0))
        {
          if (paramStringBuilder.length() > 0) {
            paramStringBuilder.append('\n');
          }
          paramStringBuilder.append(str);
        }
        i += 1;
      }
    }
  }
  
  public abstract String getDisplayResult();
  
  public final ParsedResultType getType()
  {
    return type;
  }
  
  public final String toString()
  {
    return getDisplayResult();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.ParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */