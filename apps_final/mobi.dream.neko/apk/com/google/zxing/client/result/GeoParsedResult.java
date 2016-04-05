package com.google.zxing.client.result;

public final class GeoParsedResult
  extends ParsedResult
{
  private final double altitude;
  private final double latitude;
  private final double longitude;
  private final String query;
  
  GeoParsedResult(double paramDouble1, double paramDouble2, double paramDouble3, String paramString)
  {
    super(ParsedResultType.GEO);
    latitude = paramDouble1;
    longitude = paramDouble2;
    altitude = paramDouble3;
    query = paramString;
  }
  
  public double getAltitude()
  {
    return altitude;
  }
  
  public String getDisplayResult()
  {
    StringBuilder localStringBuilder = new StringBuilder(20);
    localStringBuilder.append(latitude);
    localStringBuilder.append(", ");
    localStringBuilder.append(longitude);
    if (altitude > 0.0D)
    {
      localStringBuilder.append(", ");
      localStringBuilder.append(altitude);
      localStringBuilder.append('m');
    }
    if (query != null)
    {
      localStringBuilder.append(" (");
      localStringBuilder.append(query);
      localStringBuilder.append(')');
    }
    return localStringBuilder.toString();
  }
  
  public String getGeoURI()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("geo:");
    localStringBuilder.append(latitude);
    localStringBuilder.append(',');
    localStringBuilder.append(longitude);
    if (altitude > 0.0D)
    {
      localStringBuilder.append(',');
      localStringBuilder.append(altitude);
    }
    if (query != null)
    {
      localStringBuilder.append('?');
      localStringBuilder.append(query);
    }
    return localStringBuilder.toString();
  }
  
  public double getLatitude()
  {
    return latitude;
  }
  
  public double getLongitude()
  {
    return longitude;
  }
  
  public String getQuery()
  {
    return query;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.result.GeoParsedResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */