package com.google.android.gms.internal;

import android.os.Process;

final class eo$1
  implements Runnable
{
  eo$1(Runnable paramRunnable) {}
  
  public final void run()
  {
    Process.setThreadPriority(10);
    sg.run();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eo.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */