package com.google.android.gms.analytics;

public abstract interface Logger
{
  public abstract void error(Exception paramException);
  
  public abstract void error(String paramString);
  
  public abstract int getLogLevel();
  
  public abstract void info(String paramString);
  
  public abstract void setLogLevel(int paramInt);
  
  public abstract void verbose(String paramString);
  
  public abstract void warn(String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.Logger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */