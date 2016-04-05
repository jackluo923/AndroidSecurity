package jp.innovationplus.ipp.jsontype;

public class IPPGeoLocation
{
  private double accuracy;
  private double altitude;
  private double latitude;
  private double longitude;
  private String provider;
  private String resource_id;
  private long timestamp = System.currentTimeMillis();
  
  public double getAccuracy()
  {
    return accuracy;
  }
  
  public double getAltitude()
  {
    return altitude;
  }
  
  public double getLatitude()
  {
    return latitude;
  }
  
  public double getLongitude()
  {
    return longitude;
  }
  
  public String getProvider()
  {
    return provider;
  }
  
  public String getResource_id()
  {
    return resource_id;
  }
  
  public long getTimestamp()
  {
    return timestamp;
  }
  
  public void setAccuracy(double paramDouble)
  {
    accuracy = paramDouble;
  }
  
  public void setAltitude(double paramDouble)
  {
    altitude = paramDouble;
  }
  
  public void setLatitude(double paramDouble)
  {
    latitude = paramDouble;
  }
  
  public void setLongitude(double paramDouble)
  {
    longitude = paramDouble;
  }
  
  public void setProvider(String paramString)
  {
    provider = paramString;
  }
  
  public void setResource_id(String paramString)
  {
    resource_id = paramString;
  }
  
  public void setTimestamp(long paramLong)
  {
    timestamp = paramLong;
  }
  
  public String toString()
  {
    return "IPPGeoLocation [resource_id=" + resource_id + ", latitude=" + latitude + ", longitude=" + longitude + ", altitude=" + altitude + ", accuracy=" + accuracy + ", provider=" + provider + ", timestamp=" + timestamp + "]";
  }
}

/* Location:
 * Qualified Name:     jp.innovationplus.ipp.jsontype.IPPGeoLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */