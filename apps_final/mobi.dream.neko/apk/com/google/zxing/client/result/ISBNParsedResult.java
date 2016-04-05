package com.google.zxing.client.result;

public final class ISBNParsedResult
  extends ParsedResult
{
  private final String isbn;
  
  ISBNParsedResult(String paramString)
  {
    super(ParsedResultType.ISBN);
    isbn = paramString;
  }
  
  public String getDisplayResult()
  {
    return isbn;
  }
  
  public String getISBN()
  {
    return isbn;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.ISBNParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */