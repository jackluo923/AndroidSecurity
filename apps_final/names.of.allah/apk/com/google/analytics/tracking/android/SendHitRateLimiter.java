package com.google.analytics.tracking.android;

import com.google.android.gms.common.util.VisibleForTesting;

class SendHitRateLimiter
  implements RateLimiter
{
  private long mLastTrackTime;
  private final int mMaxTokens;
  private final long mMillisecondsPerToken;
  private final Object mTokenLock = new Object();
  private double mTokens;
  
  public SendHitRateLimiter()
  {
    this(60, 2000L);
  }
  
  public SendHitRateLimiter(int paramInt, long paramLong)
  {
    mMaxTokens = paramInt;
    mTokens = mMaxTokens;
    mMillisecondsPerToken = paramLong;
  }
  
  @VisibleForTesting
  void setLastTrackTime(long paramLong)
  {
    mLastTrackTime = paramLong;
  }
  
  @VisibleForTesting
  void setTokensAvailable(long paramLong)
  {
    mTokens = paramLong;
  }
  
  public boolean tokenAvailable()
  {
    synchronized (mTokenLock)
    {
      long l = System.currentTimeMillis();
      if (mTokens < mMaxTokens)
      {
        double d = (l - mLastTrackTime) / mMillisecondsPerToken;
        if (d > 0.0D) {
          mTokens = Math.min(mMaxTokens, d + mTokens);
        }
      }
      mLastTrackTime = l;
      if (mTokens >= 1.0D)
      {
        mTokens -= 1.0D;
        return true;
      }
      Log.w("Excessive tracking detected.  Tracking call ignored.");
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.SendHitRateLimiter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */