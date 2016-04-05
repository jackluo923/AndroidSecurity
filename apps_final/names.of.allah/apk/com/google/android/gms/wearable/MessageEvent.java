package com.google.android.gms.wearable;

public abstract interface MessageEvent
{
  public abstract byte[] getData();
  
  public abstract String getPath();
  
  public abstract int getRequestId();
  
  public abstract String getSourceNodeId();
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.MessageEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */