package com.google.android.gms.wearable.internal;

import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import java.util.HashMap;
import java.util.Map;

public final class o
  extends d
  implements DataItem
{
  private final int RD;
  
  public o(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    super(paramDataHolder, paramInt1);
    RD = paramInt2;
  }
  
  public final Map<String, DataItemAsset> getAssets()
  {
    HashMap localHashMap = new HashMap(RD);
    int i = 0;
    while (i < RD)
    {
      k localk = new k(DD, Ez + i);
      if (localk.getDataItemKey() != null) {
        localHashMap.put(localk.getDataItemKey(), localk);
      }
      i += 1;
    }
    return localHashMap;
  }
  
  public final byte[] getData()
  {
    return getByteArray("data");
  }
  
  public final Uri getUri()
  {
    return Uri.parse(getString("path"));
  }
  
  public final DataItem nm()
  {
    return new l(this);
  }
  
  public final DataItem setData(byte[] paramArrayOfByte)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */