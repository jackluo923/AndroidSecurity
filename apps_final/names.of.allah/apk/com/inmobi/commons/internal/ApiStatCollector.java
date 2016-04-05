package com.inmobi.commons.internal;

import com.inmobi.commons.metric.Logger;

public class ApiStatCollector
{
  private static Logger a = new Logger(3, "apiStats", new b());
  
  public static Logger getLogger()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.ApiStatCollector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */