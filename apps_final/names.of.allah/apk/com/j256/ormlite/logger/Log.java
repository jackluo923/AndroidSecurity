package com.j256.ormlite.logger;

public abstract interface Log
{
  public abstract boolean isLevelEnabled(Log.Level paramLevel);
  
  public abstract void log(Log.Level paramLevel, String paramString);
  
  public abstract void log(Log.Level paramLevel, String paramString, Throwable paramThrowable);
}

/* Location:
 * Qualified Name:     com.j256.ormlite.logger.Log
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */