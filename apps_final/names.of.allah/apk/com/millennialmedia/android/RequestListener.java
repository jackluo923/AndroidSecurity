package com.millennialmedia.android;

public abstract interface RequestListener
{
  public abstract void MMAdOverlayLaunched(MMAd paramMMAd);
  
  public abstract void MMAdRequestIsCaching(MMAd paramMMAd);
  
  public abstract void requestCompleted(MMAd paramMMAd);
  
  public abstract void requestFailed(MMAd paramMMAd, MMException paramMMException);
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.RequestListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */