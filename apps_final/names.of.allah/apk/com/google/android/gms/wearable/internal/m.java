package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class m
  implements SafeParcelable, DataItem
{
  public static final Parcelable.Creator<m> CREATOR = new n();
  private byte[] TC;
  private final Map<String, DataItemAsset> alH;
  private final Uri mUri;
  final int xJ;
  
  m(int paramInt, Uri paramUri, Bundle paramBundle, byte[] paramArrayOfByte)
  {
    xJ = paramInt;
    mUri = paramUri;
    paramUri = new HashMap();
    paramBundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramUri.put(str, (DataItemAssetParcelable)paramBundle.getParcelable(str));
    }
    alH = paramUri;
    TC = paramArrayOfByte;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Map<String, DataItemAsset> getAssets()
  {
    return alH;
  }
  
  public byte[] getData()
  {
    return TC;
  }
  
  public Uri getUri()
  {
    return mUri;
  }
  
  public boolean isDataValid()
  {
    return true;
  }
  
  public m m(byte[] paramArrayOfByte)
  {
    TC = paramArrayOfByte;
    return this;
  }
  
  public Bundle nh()
  {
    Bundle localBundle = new Bundle();
    localBundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
    Iterator localIterator = alH.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localBundle.putParcelable((String)localEntry.getKey(), new DataItemAssetParcelable((DataItemAsset)localEntry.getValue()));
    }
    return localBundle;
  }
  
  public m nn()
  {
    return this;
  }
  
  public String toString()
  {
    return toString(Log.isLoggable("DataItem", 3));
  }
  
  public String toString(boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder("DataItemParcelable[");
    localStringBuilder.append("@");
    localStringBuilder.append(Integer.toHexString(hashCode()));
    Object localObject2 = new StringBuilder(",dataSz=");
    if (TC == null) {}
    for (Object localObject1 = "null";; localObject1 = Integer.valueOf(TC.length))
    {
      localStringBuilder.append(localObject1);
      localStringBuilder.append(", numAssets=" + alH.size());
      localStringBuilder.append(", uri=" + mUri);
      if (paramBoolean) {
        break;
      }
      localStringBuilder.append("]");
      return localStringBuilder.toString();
    }
    localStringBuilder.append("]\n  assets: ");
    localObject1 = alH.keySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      localStringBuilder.append("\n    " + (String)localObject2 + ": " + alH.get(localObject2));
    }
    localStringBuilder.append("\n  ]");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    n.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */