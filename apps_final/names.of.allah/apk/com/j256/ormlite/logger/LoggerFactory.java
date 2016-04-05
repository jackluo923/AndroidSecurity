package com.j256.ormlite.logger;

public class LoggerFactory
{
  public static final String LOG_TYPE_SYSTEM_PROPERTY = "com.j256.ormlite.logger.type";
  private static LoggerFactory.LogType logType;
  
  private static LoggerFactory.LogType findLogType()
  {
    String str2 = System.getProperty("com.j256.ormlite.logger.type");
    if (str2 != null) {
      try
      {
        LoggerFactory.LogType localLogType = LoggerFactory.LogType.valueOf(str2);
        return localLogType;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        new LocalLog(LoggerFactory.class.getName()).log(Log.Level.WARNING, "Could not find valid log-type from system property 'com.j256.ormlite.logger.type', value '" + str2 + "'");
      }
    }
    LoggerFactory.LogType[] arrayOfLogType = LoggerFactory.LogType.values();
    int j = arrayOfLogType.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        break label95;
      }
      str2 = arrayOfLogType[i];
      String str1 = str2;
      if (str2.isAvailable()) {
        break;
      }
      i += 1;
    }
    label95:
    return LoggerFactory.LogType.LOCAL;
  }
  
  public static Logger getLogger(Class<?> paramClass)
  {
    return getLogger(paramClass.getName());
  }
  
  public static Logger getLogger(String paramString)
  {
    if (logType == null) {
      logType = findLogType();
    }
    return new Logger(logType.createLog(paramString));
  }
  
  public static String getSimpleClassName(String paramString)
  {
    String[] arrayOfString = paramString.split("\\.");
    if (arrayOfString.length <= 1) {
      return paramString;
    }
    return arrayOfString[(arrayOfString.length - 1)];
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.logger.LoggerFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */