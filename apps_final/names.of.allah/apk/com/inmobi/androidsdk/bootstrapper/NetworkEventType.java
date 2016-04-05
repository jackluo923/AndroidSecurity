package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.metric.EventType;

public enum NetworkEventType
  implements EventType
{
  private int a;
  
  static
  {
    CONNECT_ERROR = new NetworkEventType("CONNECT_ERROR", 2, 2);
    RESPONSE_ERROR = new NetworkEventType("RESPONSE_ERROR", 3, 3);
  }
  
  private NetworkEventType(int paramInt)
  {
    a = paramInt;
  }
  
  public final int getValue()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.bootstrapper.NetworkEventType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */