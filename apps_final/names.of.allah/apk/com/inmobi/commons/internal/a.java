package com.inmobi.commons.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.bootstrapper.ThinICEConfig;
import java.util.List;

final class a
  extends Handler
{
  a(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public final void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    int i;
    do
    {
      return;
      i = ActivityRecognitionManager.getDetectedActivity();
      if (i == -1) {
        break;
      }
    } while (ActivityRecognitionSampler.d.size() > AnalyticsInitializer.getConfigParams().getThinIceConfig().getActivityDetectionMaxSize());
    ActivityRecognitionSampler.d.add(new ActivityRecognitionSampler.ActivitySample(i, System.currentTimeMillis()));
    ActivityRecognitionSampler.a();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */