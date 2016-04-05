package com.google.android.gms.wearable;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public abstract interface NodeApi
{
  public abstract PendingResult<Status> addListener(GoogleApiClient paramGoogleApiClient, NodeApi.NodeListener paramNodeListener);
  
  public abstract PendingResult<NodeApi.GetConnectedNodesResult> getConnectedNodes(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<NodeApi.GetLocalNodeResult> getLocalNode(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<Status> removeListener(GoogleApiClient paramGoogleApiClient, NodeApi.NodeListener paramNodeListener);
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.NodeApi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */