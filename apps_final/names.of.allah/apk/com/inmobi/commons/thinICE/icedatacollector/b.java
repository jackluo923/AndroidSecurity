package com.inmobi.commons.thinICE.icedatacollector;

import android.util.Log;

final class b
  implements Runnable
{
  public final void run()
  {
    try
    {
      if (BuildSettings.DEBUG) {
        Log.d("IceDataCollector", "** stop runnable");
      }
      if (!IceDataCollector.a())
      {
        if (BuildSettings.DEBUG) {
          Log.d("IceDataCollector", "ignoring, stop not requested");
        }
        return;
      }
      if (BuildSettings.DEBUG) {
        Log.d("IceDataCollector", "terminating sampling and flushing");
      }
      IceDataCollector.b();
      IceDataCollector.flush();
      IceDataCollector.a(null);
      IceDataCollector.a(null);
      IceDataCollector.a(null);
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.thinICE.icedatacollector.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */