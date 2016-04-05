package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataItemAsset;

public class i
  implements DataItemAsset
{
  private final String JI;
  private final String xD;
  
  public i(DataItemAsset paramDataItemAsset)
  {
    xD = paramDataItemAsset.getId();
    JI = paramDataItemAsset.getDataItemKey();
  }
  
  public String getDataItemKey()
  {
    return JI;
  }
  
  public String getId()
  {
    return xD;
  }
  
  public boolean isDataValid()
  {
    return true;
  }
  
  public DataItemAsset nl()
  {
    return this;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DataItemAssetEntity[");
    localStringBuilder.append("@");
    localStringBuilder.append(Integer.toHexString(hashCode()));
    if (xD == null) {
      localStringBuilder.append(",noid");
    }
    for (;;)
    {
      localStringBuilder.append(", key=");
      localStringBuilder.append(JI);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
      localStringBuilder.append(",");
      localStringBuilder.append(xD);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */