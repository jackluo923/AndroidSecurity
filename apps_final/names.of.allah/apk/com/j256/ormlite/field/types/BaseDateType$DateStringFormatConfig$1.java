package com.j256.ormlite.field.types;

import java.text.DateFormat;
import java.text.SimpleDateFormat;

class BaseDateType$DateStringFormatConfig$1
  extends ThreadLocal<DateFormat>
{
  BaseDateType$DateStringFormatConfig$1(BaseDateType.DateStringFormatConfig paramDateStringFormatConfig) {}
  
  protected DateFormat initialValue()
  {
    return new SimpleDateFormat(this$0.dateFormatStr);
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.field.types.BaseDateType.DateStringFormatConfig.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */