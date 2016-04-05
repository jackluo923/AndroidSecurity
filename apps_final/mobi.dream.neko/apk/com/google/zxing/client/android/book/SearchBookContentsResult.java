package com.google.zxing.client.android.book;

final class SearchBookContentsResult
{
  private static String query;
  private final String pageId;
  private final String pageNumber;
  private final String snippet;
  private final boolean validSnippet;
  
  SearchBookContentsResult(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    pageId = paramString1;
    pageNumber = paramString2;
    snippet = paramString3;
    validSnippet = paramBoolean;
  }
  
  public static String getQuery()
  {
    return query;
  }
  
  public static void setQuery(String paramString)
  {
    query = paramString;
  }
  
  public String getPageId()
  {
    return pageId;
  }
  
  public String getPageNumber()
  {
    return pageNumber;
  }
  
  public String getSnippet()
  {
    return snippet;
  }
  
  public boolean getValidSnippet()
  {
    return validSnippet;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.book.SearchBookContentsResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */