package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataApi.DataItemResult;
import com.google.android.gms.wearable.DataApi.DataListener;
import com.google.android.gms.wearable.DataApi.DeleteDataItemsResult;
import com.google.android.gms.wearable.DataApi.GetFdForAssetResult;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.PutDataRequest;

public final class f
  implements DataApi
{
  private PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, DataApi.DataListener paramDataListener, IntentFilter[] paramArrayOfIntentFilter)
  {
    return paramGoogleApiClient.a(new f.8(this, paramDataListener, paramArrayOfIntentFilter));
  }
  
  private void a(Asset paramAsset)
  {
    if (paramAsset == null) {
      throw new IllegalArgumentException("asset is null");
    }
    if (paramAsset.getDigest() == null) {
      throw new IllegalArgumentException("invalid asset");
    }
    if (paramAsset.getData() != null) {
      throw new IllegalArgumentException("invalid asset");
    }
  }
  
  public final PendingResult<Status> addListener(GoogleApiClient paramGoogleApiClient, DataApi.DataListener paramDataListener)
  {
    return a(paramGoogleApiClient, paramDataListener, null);
  }
  
  public final PendingResult<DataApi.DeleteDataItemsResult> deleteDataItems(GoogleApiClient paramGoogleApiClient, Uri paramUri)
  {
    return paramGoogleApiClient.a(new f.5(this, paramUri));
  }
  
  public final PendingResult<DataApi.DataItemResult> getDataItem(GoogleApiClient paramGoogleApiClient, Uri paramUri)
  {
    return paramGoogleApiClient.a(new f.2(this, paramUri));
  }
  
  public final PendingResult<DataItemBuffer> getDataItems(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new f.3(this));
  }
  
  public final PendingResult<DataItemBuffer> getDataItems(GoogleApiClient paramGoogleApiClient, Uri paramUri)
  {
    return paramGoogleApiClient.a(new f.4(this, paramUri));
  }
  
  public final PendingResult<DataApi.GetFdForAssetResult> getFdForAsset(GoogleApiClient paramGoogleApiClient, Asset paramAsset)
  {
    a(paramAsset);
    return paramGoogleApiClient.a(new f.6(this, paramAsset));
  }
  
  public final PendingResult<DataApi.GetFdForAssetResult> getFdForAsset(GoogleApiClient paramGoogleApiClient, DataItemAsset paramDataItemAsset)
  {
    return paramGoogleApiClient.a(new f.7(this, paramDataItemAsset));
  }
  
  public final PendingResult<DataApi.DataItemResult> putDataItem(GoogleApiClient paramGoogleApiClient, PutDataRequest paramPutDataRequest)
  {
    return paramGoogleApiClient.a(new f.1(this, paramPutDataRequest));
  }
  
  public final PendingResult<Status> removeListener(GoogleApiClient paramGoogleApiClient, DataApi.DataListener paramDataListener)
  {
    return paramGoogleApiClient.a(new f.9(this, paramDataListener));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */