package com.adsdk.sdk;

import java.io.Serializable;

public abstract interface Ad
  extends Serializable
{
  public abstract int getType();
  
  public abstract void setType(int paramInt);
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.Ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */