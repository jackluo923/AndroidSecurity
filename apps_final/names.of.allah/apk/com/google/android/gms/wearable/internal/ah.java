package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.NodeApi;
import com.google.android.gms.wearable.NodeApi.GetConnectedNodesResult;
import com.google.android.gms.wearable.NodeApi.GetLocalNodeResult;
import com.google.android.gms.wearable.NodeApi.NodeListener;

public final class ah
  implements NodeApi
{
  public final PendingResult<Status> addListener(GoogleApiClient paramGoogleApiClient, NodeApi.NodeListener paramNodeListener)
  {
    return paramGoogleApiClient.a(new ah.3(this, paramNodeListener));
  }
  
  public final PendingResult<NodeApi.GetConnectedNodesResult> getConnectedNodes(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new ah.2(this));
  }
  
  public final PendingResult<NodeApi.GetLocalNodeResult> getLocalNode(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new ah.1(this));
  }
  
  public final PendingResult<Status> removeListener(GoogleApiClient paramGoogleApiClient, NodeApi.NodeListener paramNodeListener)
  {
    return paramGoogleApiClient.a(new ah.4(this, paramNodeListener));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */