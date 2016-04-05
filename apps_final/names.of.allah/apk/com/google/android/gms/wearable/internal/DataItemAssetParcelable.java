package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hn;
import com.google.android.gms.wearable.DataItemAsset;

public class DataItemAssetParcelable
  implements SafeParcelable, DataItemAsset
{
  public static final Parcelable.Creator<DataItemAssetParcelable> CREATOR = new j();
  private final String JI;
  private final String xD;
  final int xJ;
  
  DataItemAssetParcelable(int paramInt, String paramString1, String paramString2)
  {
    xJ = paramInt;
    xD = paramString1;
    JI = paramString2;
  }
  
  public DataItemAssetParcelable(DataItemAsset paramDataItemAsset)
  {
    xJ = 1;
    xD = ((String)hn.f(paramDataItemAsset.getId()));
    JI = ((String)hn.f(paramDataItemAsset.getDataItemKey()));
  }
  
  public int describeContents()
  {
    return 0;
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
    localStringBuilder.append("DataItemAssetParcelable[");
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
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.DataItemAssetParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */