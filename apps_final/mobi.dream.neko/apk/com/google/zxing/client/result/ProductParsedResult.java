package com.google.zxing.client.result;

public final class ProductParsedResult
  extends ParsedResult
{
  private final String normalizedProductID;
  private final String productID;
  
  ProductParsedResult(String paramString)
  {
    this(paramString, paramString);
  }
  
  ProductParsedResult(String paramString1, String paramString2)
  {
    super(ParsedResultType.PRODUCT);
    productID = paramString1;
    normalizedProductID = paramString2;
  }
  
  public String getDisplayResult()
  {
    return productID;
  }
  
  public String getNormalizedProductID()
  {
    return normalizedProductID;
  }
  
  public String getProductID()
  {
    return productID;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.ProductParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */