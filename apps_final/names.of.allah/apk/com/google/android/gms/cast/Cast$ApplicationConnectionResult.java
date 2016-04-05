package com.google.android.gms.cast;

import com.google.android.gms.common.api.Result;

public abstract interface Cast$ApplicationConnectionResult
  extends Result
{
  public abstract ApplicationMetadata getApplicationMetadata();
  
  public abstract String getApplicationStatus();
  
  public abstract String getSessionId();
  
  public abstract boolean getWasLaunched();
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.Cast.ApplicationConnectionResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */