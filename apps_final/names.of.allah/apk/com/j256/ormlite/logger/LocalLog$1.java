package com.j256.ormlite.logger;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

final class LocalLog$1
  extends ThreadLocal<DateFormat>
{
  protected final DateFormat initialValue()
  {
    return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss,SSS");
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.logger.LocalLog.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */