package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi.GetLocalNodeResult;

public class ah$b
  implements NodeApi.GetLocalNodeResult
{
  private final Node alX;
  private final Status yw;
  
  public ah$b(Status paramStatus, Node paramNode)
  {
    yw = paramStatus;
    alX = paramNode;
  }
  
  public Node getNode()
  {
    return alX;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.ah.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */