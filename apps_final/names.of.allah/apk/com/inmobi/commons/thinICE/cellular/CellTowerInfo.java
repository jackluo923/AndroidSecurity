package com.inmobi.commons.thinICE.cellular;

public final class CellTowerInfo
{
  public String id;
  public int signalStrength;
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append("[");
    localStringBuilder.append("id=").append(id).append(", ");
    localStringBuilder.append("ss=").append(signalStrength).append(", ");
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.cellular.CellTowerInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */