package com.google.zxing.client.result;

public final class TextParsedResult
  extends ParsedResult
{
  private final String language;
  private final String text;
  
  public TextParsedResult(String paramString1, String paramString2)
  {
    super(ParsedResultType.TEXT);
    text = paramString1;
    language = paramString2;
  }
  
  public String getDisplayResult()
  {
    return text;
  }
  
  public String getLanguage()
  {
    return language;
  }
  
  public String getText()
  {
    return text;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.TextParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */