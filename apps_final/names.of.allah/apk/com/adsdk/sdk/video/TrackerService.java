package com.adsdk.sdk.video;

import com.adsdk.sdk.Log;
import java.util.LinkedList;
import java.util.Queue;

public class TrackerService
{
  private static Object sLock = new Object();
  private static Queue<TrackEvent> sRetryTrackEvents = new LinkedList();
  private static boolean sStopped;
  private static Thread sThread;
  private static boolean sThreadRunning = false;
  private static Queue<TrackEvent> sTrackEvents = new LinkedList();
  
  private static TrackEvent getNextUpdate()
  {
    synchronized (sLock)
    {
      TrackEvent localTrackEvent = (TrackEvent)sTrackEvents.poll();
      return localTrackEvent;
    }
  }
  
  private static boolean hasMoreUpdates()
  {
    synchronized (sLock)
    {
      if (sTrackEvents.isEmpty())
      {
        bool = false;
        Log.d("More updates:" + bool + " size:" + sTrackEvents.size());
        return bool;
      }
      boolean bool = true;
    }
  }
  
  public static void release()
  {
    Log.v("release");
    if (sThread != null)
    {
      Log.v("release stopping Tracking events thread");
      sStopped = true;
    }
  }
  
  public static void requestRetry(TrackEvent paramTrackEvent)
  {
    synchronized (sLock)
    {
      if (!sRetryTrackEvents.contains(paramTrackEvent))
      {
        retries += 1;
        if (retries <= 5) {
          sRetryTrackEvents.add(paramTrackEvent);
        }
      }
      Log.d("Added retry track event:" + sRetryTrackEvents.size());
      return;
    }
  }
  
  public static void requestTrack(TrackEvent paramTrackEvent)
  {
    synchronized (sLock)
    {
      if (!sTrackEvents.contains(paramTrackEvent)) {
        sTrackEvents.add(paramTrackEvent);
      }
      Log.d("Added track event:" + sTrackEvents.size());
      if (!sThreadRunning) {
        startTracking();
      }
      return;
    }
  }
  
  public static void requestTrack(TrackEvent[] paramArrayOfTrackEvent)
  {
    synchronized (sLock)
    {
      int j = paramArrayOfTrackEvent.length;
      int i = 0;
      if (i >= j)
      {
        Log.d("Added track event:" + sTrackEvents.size());
        if (!sThreadRunning) {
          startTracking();
        }
        return;
      }
      TrackEvent localTrackEvent = paramArrayOfTrackEvent[i];
      if (!sTrackEvents.contains(localTrackEvent)) {
        sTrackEvents.add(localTrackEvent);
      }
      i += 1;
    }
  }
  
  public static void startTracking()
  {
    synchronized (sLock)
    {
      if (!sThreadRunning)
      {
        sThreadRunning = true;
        Thread localThread = new Thread(new TrackerService.1());
        sThread = localThread;
        localThread.setUncaughtExceptionHandler(new TrackerService.2());
        sThread.start();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.TrackerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */