package com.google.zxing.client.result;

public final class TelParsedResult
  extends ParsedResult
{
  private final String number;
  private final String telURI;
  private final String title;
  
  public TelParsedResult(String paramString1, String paramString2, String paramString3)
  {
    super(ParsedResultType.TEL);
    number = paramString1;
    telURI = paramString2;
    title = paramString3;
  }
  
  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(20);
    maybeAppend(number, localStringBuilder);
    maybeAppend(title, localStringBuilder);
    return localStringBuilder.toString();
  }
  
  public String getNumber()
  {
    return number;
  }
  
  public String getTelURI()
  {
    return telURI;
  }
  
  public String getTitle()
  {
    return title;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.TelParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */