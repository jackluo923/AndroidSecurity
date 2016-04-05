package com.j256.ormlite.logger;

 enum LoggerFactory$LogType$1
{
  LoggerFactory$LogType$1(String paramString2, String paramString3)
  {
    super(paramString1, paramInt, paramString2, paramString3, null);
  }
  
  public final Log createLog(String paramString)
  {
    return new LocalLog(paramString);
  }
  
  public final boolean isAvailable()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.logger.LoggerFactory.LogType.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */