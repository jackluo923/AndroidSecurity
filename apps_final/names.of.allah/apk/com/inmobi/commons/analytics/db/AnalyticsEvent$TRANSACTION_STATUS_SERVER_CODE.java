package com.inmobi.commons.analytics.db;

public enum AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE
{
  private final int a;
  
  static
  {
    FAILED = new TRANSACTION_STATUS_SERVER_CODE("FAILED", 2, 2);
    RESTORED = new TRANSACTION_STATUS_SERVER_CODE("RESTORED", 3, 3);
  }
  
  private AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE(int paramInt)
  {
    a = paramInt;
  }
  
  public final int getValue()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */