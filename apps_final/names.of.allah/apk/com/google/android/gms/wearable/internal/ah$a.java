package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi.GetConnectedNodesResult;
import java.util.List;

public class ah$a
  implements NodeApi.GetConnectedNodesResult
{
  private final List<Node> alW;
  private final Status yw;
  
  public ah$a(Status paramStatus, List<Node> paramList)
  {
    yw = paramStatus;
    alW = paramList;
  }
  
  public List<Node> getNodes()
  {
    return alW;
  }
  
  public Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.ah.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */