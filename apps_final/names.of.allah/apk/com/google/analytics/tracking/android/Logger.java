package com.google.analytics.tracking.android;

public abstract interface Logger
{
  public abstract void error(Exception paramException);
  
  public abstract void error(String paramString);
  
  public abstract Logger.LogLevel getLogLevel();
  
  public abstract void info(String paramString);
  
  public abstract void setLogLevel(Logger.LogLevel paramLogLevel);
  
  public abstract void verbose(String paramString);
  
  public abstract void warn(String paramString);
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.Logger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */