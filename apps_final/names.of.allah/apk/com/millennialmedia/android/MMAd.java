package com.millennialmedia.android;

public abstract interface MMAd
{
  public static final String BANNER = "b";
  public static final String INTERSTITIAL = "i";
  
  public abstract String getApid();
  
  public abstract boolean getIgnoresDensityScaling();
  
  public abstract RequestListener getListener();
  
  public abstract MMRequest getMMRequest();
  
  public abstract void setApid(String paramString);
  
  public abstract void setIgnoresDensityScaling(boolean paramBoolean);
  
  public abstract void setListener(RequestListener paramRequestListener);
  
  public abstract void setMMRequest(MMRequest paramMMRequest);
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */