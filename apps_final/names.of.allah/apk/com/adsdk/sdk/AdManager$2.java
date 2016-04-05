package com.adsdk.sdk;

class AdManager$2
  implements Thread.UncaughtExceptionHandler
{
  AdManager$2(AdManager paramAdManager) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    AdManager.access$13(this$0, new AdResponse());
    AdManager.access$14(this$0).setType(-1);
    Log.e("Handling exception in ad request thread", paramThrowable);
    AdManager.access$11(this$0, null);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.AdManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */