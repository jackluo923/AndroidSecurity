package com.inmobi.commons.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.bootstrapper.ThinICEConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ActivityRecognitionSampler
{
  static HandlerThread a;
  static Looper b = a.getLooper();
  static Handler c = new a(b);
  static List<ActivityRecognitionSampler.ActivitySample> d = new ArrayList();
  
  static
  {
    HandlerThread localHandlerThread = new HandlerThread("ActivityDetectionSampler");
    a = localHandlerThread;
    localHandlerThread.start();
  }
  
  private static void b()
  {
    if (AnalyticsInitializer.getConfigParams().getThinIceConfig().isActivityDetectionEnabled())
    {
      Message localMessage = c.obtainMessage(1);
      c.sendMessageDelayed(localMessage, AnalyticsInitializer.getConfigParams().getThinIceConfig().getActivityDetectionInterval());
    }
  }
  
  public static List<ActivityRecognitionSampler.ActivitySample> getCollectedList()
  {
    if (AnalyticsInitializer.getConfigParams().getThinIceConfig().isActivityDetectionEnabled()) {
      return d;
    }
    return Collections.emptyList();
  }
  
  public static void start()
  {
    if (c.hasMessages(1)) {
      return;
    }
    c.sendEmptyMessage(1);
  }
  
  public static void stop()
  {
    c.removeMessages(1);
    d.clear();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.ActivityRecognitionSampler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */