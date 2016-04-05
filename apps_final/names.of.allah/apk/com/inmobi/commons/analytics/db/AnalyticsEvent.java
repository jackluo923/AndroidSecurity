package com.inmobi.commons.analytics.db;

public class AnalyticsEvent
{
  public static final String EVENT_ID = "id";
  public static final String IN_APP = "inapp";
  public static final String SUBS = "subs";
  public static final String TYPE_CUSTOM_EVENT = "ce";
  public static final String TYPE_END_SESSION = "es";
  public static final String TYPE_LEVEL_BEGIN = "lb";
  public static final String TYPE_LEVEL_END = "le";
  public static final String TYPE_START_SESSION = "ss";
  public static final String TYPE_TAG_TRANSACTION = "pi";
  private long a;
  private String b;
  private String c;
  private long d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private AnalyticsEvent.TRANSACTION_ITEM_TYPE o;
  private double p;
  private int q;
  private String r;
  private String s;
  private String t;
  private AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE u;
  private long v;
  private long w;
  
  public AnalyticsEvent(String paramString)
  {
    b = paramString;
  }
  
  public String getEventAttemptCount()
  {
    return j;
  }
  
  public String getEventAttemptTime()
  {
    return k;
  }
  
  public String getEventAttributeMap()
  {
    return e;
  }
  
  public String getEventCustomName()
  {
    return l;
  }
  
  public long getEventId()
  {
    return a;
  }
  
  public String getEventLevelId()
  {
    return f;
  }
  
  public String getEventLevelName()
  {
    return g;
  }
  
  public String getEventLevelStatus()
  {
    return h;
  }
  
  public String getEventSessionId()
  {
    return c;
  }
  
  public long getEventSessionTimeStamp()
  {
    return d;
  }
  
  public long getEventTableId()
  {
    return w;
  }
  
  public long getEventTimeStamp()
  {
    return v;
  }
  
  public String getEventTimeTaken()
  {
    return i;
  }
  
  public String getEventType()
  {
    return b;
  }
  
  public String getTransactionCurrencyCode()
  {
    return r;
  }
  
  public String getTransactionId()
  {
    return t;
  }
  
  public int getTransactionItemCount()
  {
    return q;
  }
  
  public String getTransactionItemDescription()
  {
    return n;
  }
  
  public String getTransactionItemName()
  {
    return m;
  }
  
  public double getTransactionItemPrice()
  {
    return p;
  }
  
  public int getTransactionItemType()
  {
    if (o == null) {
      return AnalyticsEvent.TRANSACTION_ITEM_TYPE.INVALID.getValue();
    }
    return o.getValue();
  }
  
  public String getTransactionProductId()
  {
    return s;
  }
  
  public int getTransactionStatus()
  {
    if (u == null) {
      return AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.INVALID.getValue();
    }
    return u.getValue();
  }
  
  public void setEventAttemptCount(String paramString)
  {
    j = paramString;
  }
  
  public void setEventAttemptTime(String paramString)
  {
    k = paramString;
  }
  
  public void setEventAttributeMap(String paramString)
  {
    e = paramString;
  }
  
  public void setEventCustomName(String paramString)
  {
    l = paramString;
  }
  
  public void setEventId(long paramLong)
  {
    a = paramLong;
  }
  
  public void setEventLevelId(String paramString)
  {
    f = paramString;
  }
  
  public void setEventLevelName(String paramString)
  {
    g = paramString;
  }
  
  public void setEventLevelStatus(String paramString)
  {
    h = paramString;
  }
  
  public void setEventSessionId(String paramString)
  {
    c = paramString;
  }
  
  public void setEventSessionTimeStamp(long paramLong)
  {
    d = paramLong;
  }
  
  public void setEventTableId(long paramLong)
  {
    w = paramLong;
  }
  
  public void setEventTimeStamp(long paramLong)
  {
    v = paramLong;
  }
  
  public void setEventTimeTaken(String paramString)
  {
    i = paramString;
  }
  
  public void setTransactionCurrencyCode(String paramString)
  {
    r = paramString;
  }
  
  public void setTransactionId(String paramString)
  {
    t = paramString;
  }
  
  public void setTransactionItemCount(int paramInt)
  {
    q = paramInt;
  }
  
  public void setTransactionItemDescription(String paramString)
  {
    n = paramString;
  }
  
  public void setTransactionItemName(String paramString)
  {
    m = paramString;
  }
  
  public void setTransactionItemPrice(double paramDouble)
  {
    p = paramDouble;
  }
  
  public void setTransactionItemType(int paramInt)
  {
    if (AnalyticsEvent.TRANSACTION_ITEM_TYPE.INAPP.getValue() == paramInt)
    {
      o = AnalyticsEvent.TRANSACTION_ITEM_TYPE.INAPP;
      return;
    }
    if (AnalyticsEvent.TRANSACTION_ITEM_TYPE.SUBSCRIPTION.getValue() == paramInt)
    {
      o = AnalyticsEvent.TRANSACTION_ITEM_TYPE.SUBSCRIPTION;
      return;
    }
    o = AnalyticsEvent.TRANSACTION_ITEM_TYPE.INVALID;
  }
  
  public void setTransactionProductId(String paramString)
  {
    s = paramString;
  }
  
  public void setTransactionStatus(int paramInt)
  {
    if (AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.PURCHASED.getValue() == paramInt)
    {
      u = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.PURCHASED;
      return;
    }
    if (AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.REFUNDED.getValue() == paramInt)
    {
      u = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.REFUNDED;
      return;
    }
    if (AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.FAILED.getValue() == paramInt)
    {
      u = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.FAILED;
      return;
    }
    u = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.INVALID;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.db.AnalyticsEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */