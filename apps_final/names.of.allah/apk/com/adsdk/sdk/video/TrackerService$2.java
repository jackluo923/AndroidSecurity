package com.adsdk.sdk.video;

class TrackerService$2
  implements Thread.UncaughtExceptionHandler
{
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    TrackerService.access$7(false);
    TrackerService.access$8(null);
    TrackerService.startTracking();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.TrackerService.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */