package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataApi.DataListener;
import com.google.android.gms.wearable.DataEventBuffer;
import com.google.android.gms.wearable.MessageApi.MessageListener;
import com.google.android.gms.wearable.NodeApi.NodeListener;

public class av
  extends ac.a
{
  private final DataApi.DataListener ami;
  private final MessageApi.MessageListener amj;
  private final NodeApi.NodeListener amk;
  private final IntentFilter[] aml;
  
  public av(DataApi.DataListener paramDataListener, MessageApi.MessageListener paramMessageListener, NodeApi.NodeListener paramNodeListener, IntentFilter[] paramArrayOfIntentFilter)
  {
    ami = paramDataListener;
    amj = paramMessageListener;
    amk = paramNodeListener;
    aml = paramArrayOfIntentFilter;
  }
  
  public static av a(DataApi.DataListener paramDataListener, IntentFilter[] paramArrayOfIntentFilter)
  {
    return new av(paramDataListener, null, null, paramArrayOfIntentFilter);
  }
  
  public static av a(MessageApi.MessageListener paramMessageListener, IntentFilter[] paramArrayOfIntentFilter)
  {
    return new av(null, paramMessageListener, null, paramArrayOfIntentFilter);
  }
  
  public static av a(NodeApi.NodeListener paramNodeListener)
  {
    return new av(null, null, paramNodeListener, null);
  }
  
  public void Y(DataHolder paramDataHolder)
  {
    if (ami != null) {
      try
      {
        ami.onDataChanged(new DataEventBuffer(paramDataHolder));
        return;
      }
      finally
      {
        paramDataHolder.close();
      }
    }
    paramDataHolder.close();
  }
  
  public void a(af paramaf)
  {
    if (amj != null) {
      amj.onMessageReceived(paramaf);
    }
  }
  
  public void a(ai paramai)
  {
    if (amk != null) {
      amk.onPeerConnected(paramai);
    }
  }
  
  public void b(ai paramai)
  {
    if (amk != null) {
      amk.onPeerDisconnected(paramai);
    }
  }
  
  public IntentFilter[] np()
  {
    return aml;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */