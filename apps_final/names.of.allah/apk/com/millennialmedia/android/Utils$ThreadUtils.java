package com.millennialmedia.android;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

class Utils$ThreadUtils
{
  private static final ExecutorService cachedThreadExecutor = ;
  
  static void execute(Runnable paramRunnable)
  {
    cachedThreadExecutor.execute(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.Utils.ThreadUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */