package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.wearable.DataItemAsset;

public class k
  extends d
  implements DataItemAsset
{
  public k(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public String getDataItemKey()
  {
    return getString("asset_key");
  }
  
  public String getId()
  {
    return getString("asset_id");
  }
  
  public DataItemAsset nl()
  {
    return new i(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */