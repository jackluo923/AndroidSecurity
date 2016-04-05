package com.millennialmedia.android;

import java.io.ObjectInputStream;
import java.util.Date;

class AdCache$Iterator
{
  static final int ITERATE_ID = 0;
  static final int ITERATE_INFO = 1;
  static final int ITERATE_OBJECT = 2;
  
  boolean callback(CachedAd paramCachedAd)
  {
    return false;
  }
  
  boolean callback(String paramString)
  {
    return false;
  }
  
  boolean callback(String paramString1, int paramInt, Date paramDate, String paramString2, long paramLong, ObjectInputStream paramObjectInputStream)
  {
    return false;
  }
  
  void done() {}
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdCache.Iterator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */