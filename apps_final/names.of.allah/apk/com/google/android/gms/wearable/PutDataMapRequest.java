package com.google.android.gms.wearable;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.internal.lw;
import com.google.android.gms.internal.lw.a;
import com.google.android.gms.internal.mf;
import java.util.List;

public class PutDataMapRequest
{
  private final DataMap ali;
  private final PutDataRequest alj;
  
  private PutDataMapRequest(PutDataRequest paramPutDataRequest, DataMap paramDataMap)
  {
    alj = paramPutDataRequest;
    ali = new DataMap();
    if (paramDataMap != null) {
      ali.putAll(paramDataMap);
    }
  }
  
  public static PutDataMapRequest create(String paramString)
  {
    return new PutDataMapRequest(PutDataRequest.create(paramString), null);
  }
  
  public static PutDataMapRequest createFromDataMapItem(DataMapItem paramDataMapItem)
  {
    return new PutDataMapRequest(PutDataRequest.j(paramDataMapItem.getUri()), paramDataMapItem.getDataMap());
  }
  
  public static PutDataMapRequest createWithAutoAppendedId(String paramString)
  {
    return new PutDataMapRequest(PutDataRequest.createWithAutoAppendedId(paramString), null);
  }
  
  public PutDataRequest asPutDataRequest()
  {
    lw.a locala = lw.a(ali);
    alj.setData(mf.d(amm));
    int j = amn.size();
    int i = 0;
    while (i < j)
    {
      String str = Integer.toString(i);
      Asset localAsset = (Asset)amn.get(i);
      if (str == null) {
        throw new IllegalStateException("asset key cannot be null: " + localAsset);
      }
      if (localAsset == null) {
        throw new IllegalStateException("asset cannot be null: key=" + str);
      }
      if (Log.isLoggable("DataMap", 3)) {
        Log.d("DataMap", "asPutDataRequest: adding asset: " + str + " " + localAsset);
      }
      alj.putAsset(str, localAsset);
      i += 1;
    }
    return alj;
  }
  
  public DataMap getDataMap()
  {
    return ali;
  }
  
  public Uri getUri()
  {
    return alj.getUri();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.PutDataMapRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */