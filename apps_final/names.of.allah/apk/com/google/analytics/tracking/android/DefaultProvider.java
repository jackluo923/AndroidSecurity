package com.google.analytics.tracking.android;

abstract interface DefaultProvider
{
  public abstract String getValue(String paramString);
  
  public abstract boolean providesField(String paramString);
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.DefaultProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */