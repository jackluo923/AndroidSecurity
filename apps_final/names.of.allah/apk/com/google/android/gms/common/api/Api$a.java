package com.google.android.gms.common.api;

import android.os.Looper;

public abstract interface Api$a
{
  public abstract void connect();
  
  public abstract void disconnect();
  
  public abstract Looper getLooper();
  
  public abstract boolean isConnected();
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Api.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */