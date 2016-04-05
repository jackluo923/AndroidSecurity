package com.google.zxing.client.result;

import java.util.Map;

public final class ExpandedProductParsedResult
  extends ParsedResult
{
  public static final String KILOGRAM = "KG";
  public static final String POUND = "LB";
  private final String bestBeforeDate;
  private final String expirationDate;
  private final String lotNumber;
  private final String packagingDate;
  private final String price;
  private final String priceCurrency;
  private final String priceIncrement;
  private final String productID;
  private final String productionDate;
  private final String sscc;
  private final Map<String, String> uncommonAIs;
  private final String weight;
  private final String weightIncrement;
  private final String weightType;
  
  public ExpandedProductParsedResult(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, Map<String, String> paramMap)
  {
    super(ParsedResultType.PRODUCT);
    productID = paramString1;
    sscc = paramString2;
    lotNumber = paramString3;
    productionDate = paramString4;
    packagingDate = paramString5;
    bestBeforeDate = paramString6;
    expirationDate = paramString7;
    weight = paramString8;
    weightType = paramString9;
    weightIncrement = paramString10;
    price = paramString11;
    priceIncrement = paramString12;
    priceCurrency = paramString13;
    uncommonAIs = paramMap;
  }
  
  private static boolean equalsOrNull(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      return paramObject2 == null;
    }
    return paramObject1.equals(paramObject2);
  }
  
  private static int hashNotNull(Object paramObject)
  {
    if (paramObject == null) {
      return 0;
    }
    return paramObject.hashCode();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ExpandedProductParsedResult)) {}
    do
    {
      return false;
      paramObject = (ExpandedProductParsedResult)paramObject;
    } while ((!equalsOrNull(productID, productID)) || (!equalsOrNull(sscc, sscc)) || (!equalsOrNull(lotNumber, lotNumber)) || (!equalsOrNull(productionDate, productionDate)) || (!equalsOrNull(bestBeforeDate, bestBeforeDate)) || (!equalsOrNull(expirationDate, expirationDate)) || (!equalsOrNull(weight, weight)) || (!equalsOrNull(weightType, weightType)) || (!equalsOrNull(weightIncrement, weightIncrement)) || (!equalsOrNull(price, price)) || (!equalsOrNull(priceIncrement, priceIncrement)) || (!equalsOrNull(priceCurrency, priceCurrency)) || (!equalsOrNull(uncommonAIs, uncommonAIs)));
    return true;
  }
  
  public String getBestBeforeDate()
  {
    return bestBeforeDate;
  }
  
  public String getDisplayResult()
  {
    return String.valueOf(productID);
  }
  
  public String getExpirationDate()
  {
    return expirationDate;
  }
  
  public String getLotNumber()
  {
    return lotNumber;
  }
  
  public String getPackagingDate()
  {
    return packagingDate;
  }
  
  public String getPrice()
  {
    return price;
  }
  
  public String getPriceCurrency()
  {
    return priceCurrency;
  }
  
  public String getPriceIncrement()
  {
    return priceIncrement;
  }
  
  public String getProductID()
  {
    return productID;
  }
  
  public String getProductionDate()
  {
    return productionDate;
  }
  
  public String getSscc()
  {
    return sscc;
  }
  
  public Map<String, String> getUncommonAIs()
  {
    return uncommonAIs;
  }
  
  public String getWeight()
  {
    return weight;
  }
  
  public String getWeightIncrement()
  {
    return weightIncrement;
  }
  
  public String getWeightType()
  {
    return weightType;
  }
  
  public int hashCode()
  {
    return 0x0 ^ hashNotNull(productID) ^ hashNotNull(sscc) ^ hashNotNull(lotNumber) ^ hashNotNull(productionDate) ^ hashNotNull(bestBeforeDate) ^ hashNotNull(expirationDate) ^ hashNotNull(weight) ^ hashNotNull(weightType) ^ hashNotNull(weightIncrement) ^ hashNotNull(price) ^ hashNotNull(priceIncrement) ^ hashNotNull(priceCurrency) ^ hashNotNull(uncommonAIs);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.ExpandedProductParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */