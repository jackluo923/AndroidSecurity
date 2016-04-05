package com.inmobi.commons.internal;

public enum Log$INTERNAL_LOG_LEVEL
{
  private final int a;
  
  static
  {
    NONE = new INTERNAL_LOG_LEVEL("NONE", 1, 0);
    DEBUG = new INTERNAL_LOG_LEVEL("DEBUG", 2, 1);
    VERBOSE = new INTERNAL_LOG_LEVEL("VERBOSE", 3, 2);
  }
  
  private Log$INTERNAL_LOG_LEVEL(int paramInt)
  {
    a = paramInt;
  }
  
  public final int getValue()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.Log.INTERNAL_LOG_LEVEL
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */