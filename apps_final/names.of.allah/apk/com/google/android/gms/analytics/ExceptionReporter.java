package com.google.android.gms.analytics;

import android.content.Context;
import java.util.ArrayList;

public class ExceptionReporter
  implements Thread.UncaughtExceptionHandler
{
  private final Context mContext;
  private final Thread.UncaughtExceptionHandler tL;
  private final Tracker tM;
  private ExceptionParser tN;
  
  public ExceptionReporter(Tracker paramTracker, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler, Context paramContext)
  {
    if (paramTracker == null) {
      throw new NullPointerException("tracker cannot be null");
    }
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    tL = paramUncaughtExceptionHandler;
    tM = paramTracker;
    tN = new StandardExceptionParser(paramContext, new ArrayList());
    mContext = paramContext.getApplicationContext();
    paramContext = new StringBuilder("ExceptionReporter created, original handler is ");
    if (paramUncaughtExceptionHandler == null) {}
    for (paramTracker = "null";; paramTracker = paramUncaughtExceptionHandler.getClass().getName())
    {
      aa.C(paramTracker);
      return;
    }
  }
  
  Thread.UncaughtExceptionHandler cy()
  {
    return tL;
  }
  
  public ExceptionParser getExceptionParser()
  {
    return tN;
  }
  
  public void setExceptionParser(ExceptionParser paramExceptionParser)
  {
    tN = paramExceptionParser;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    String str = "UncaughtException";
    if (tN != null) {
      if (paramThread == null) {
        break label109;
      }
    }
    label109:
    for (str = paramThread.getName();; str = null)
    {
      str = tN.getDescription(str, paramThrowable);
      aa.C("Tracking Exception: " + str);
      tM.send(new HitBuilders.ExceptionBuilder().setDescription(str).setFatal(true).build());
      GoogleAnalytics.getInstance(mContext).dispatchLocalHits();
      if (tL != null)
      {
        aa.C("Passing exception to original handler.");
        tL.uncaughtException(paramThread, paramThrowable);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ExceptionReporter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */