package com.inmobi.commons.cache;

import com.inmobi.commons.internal.Log;
import java.util.TimerTask;

class RetryMechanism$a
  extends TimerTask
{
  RetryMechanism$a(RetryMechanism paramRetryMechanism, RetryMechanism.RetryRunnable paramRetryRunnable) {}
  
  public void run()
  {
    try
    {
      a.run();
      a.completed();
      return;
    }
    catch (Exception localException)
    {
      RetryMechanism.a(b);
      if (RetryMechanism.b(b) > RetryMechanism.c(b))
      {
        Log.internal("[InMobi]-4.4.1", "Exception occured while running retry mechanism and will the limit for retrying has been reached.");
        a.completed();
        return;
      }
      Log.internal("[InMobi]-4.4.1", "Exception occured while running retry mechanism and will retry in " + RetryMechanism.b(b) * RetryMechanism.d(b) + " ms");
      RetryMechanism.a(b, a, RetryMechanism.b(b) * RetryMechanism.d(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.cache.RetryMechanism.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */