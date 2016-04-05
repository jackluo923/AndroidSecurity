package com.j256.ormlite.field.types;

import java.text.DateFormat;

public class BaseDateType$DateStringFormatConfig
{
  final String dateFormatStr;
  private final ThreadLocal<DateFormat> threadLocal = new BaseDateType.DateStringFormatConfig.1(this);
  
  public BaseDateType$DateStringFormatConfig(String paramString)
  {
    dateFormatStr = paramString;
  }
  
  public DateFormat getDateFormat()
  {
    return (DateFormat)threadLocal.get();
  }
  
  public String toString()
  {
    return dateFormatStr;
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.BaseDateType.DateStringFormatConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */