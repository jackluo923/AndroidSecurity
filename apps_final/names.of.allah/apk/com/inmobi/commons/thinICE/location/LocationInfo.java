package com.inmobi.commons.thinICE.location;

public final class LocationInfo
{
  public float accuracy;
  public double latitude;
  public double longitude;
  public String provider;
  public long time;
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append("[");
    localStringBuilder.append("time=").append(time).append(", ");
    localStringBuilder.append("provider=").append(provider).append(", ");
    localStringBuilder.append("latitude=").append(latitude).append(", ");
    localStringBuilder.append("longitude=").append(longitude).append(", ");
    localStringBuilder.append("accuracy=").append(accuracy);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.location.LocationInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */