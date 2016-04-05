package com.inmobi.commons.thinICE.cellular;

public final class CellOperatorInfo
{
  public static final int MCC_NOT_AVAILABLE = -1;
  public static final int MNC_NOT_AVAILABLE = -1;
  public int currentMcc;
  public int currentMnc;
  public int simMcc;
  public int simMnc;
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append("[");
    localStringBuilder.append("currentMcc=").append(currentMcc).append(", ");
    localStringBuilder.append("currentMnc=").append(currentMnc).append(", ");
    localStringBuilder.append("simMcc=").append(simMcc).append(", ");
    localStringBuilder.append("simMnc=").append(simMnc);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.cellular.CellOperatorInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */