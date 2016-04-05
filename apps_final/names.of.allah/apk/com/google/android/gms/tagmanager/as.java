package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.concurrent.LinkedBlockingQueue;

class as
  extends Thread
  implements ar
{
  private static as afF;
  private final LinkedBlockingQueue<Runnable> afE = new LinkedBlockingQueue();
  private volatile at afG;
  private volatile boolean mClosed = false;
  private final Context mContext;
  private volatile boolean uI = false;
  
  private as(Context paramContext)
  {
    super("GAThread");
    if (paramContext != null) {}
    for (mContext = paramContext.getApplicationContext();; mContext = paramContext)
    {
      start();
      return;
    }
  }
  
  static as M(Context paramContext)
  {
    if (afF == null) {
      afF = new as(paramContext);
    }
    return afF;
  }
  
  private String a(Throwable paramThrowable)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    PrintStream localPrintStream = new PrintStream(localByteArrayOutputStream);
    paramThrowable.printStackTrace(localPrintStream);
    localPrintStream.flush();
    return new String(localByteArrayOutputStream.toByteArray());
  }
  
  public void a(Runnable paramRunnable)
  {
    afE.add(paramRunnable);
  }
  
  void b(String paramString, long paramLong)
  {
    a(new as.1(this, this, paramLong, paramString));
  }
  
  public void bU(String paramString)
  {
    b(paramString, System.currentTimeMillis());
  }
  
  public void run()
  {
    while (!mClosed) {
      try
      {
        Runnable localRunnable = (Runnable)afE.take();
        if (!uI) {
          localRunnable.run();
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        bh.B(localInterruptedException.toString());
      }
      catch (Throwable localThrowable)
      {
        bh.A("Error on GAThread: " + a(localThrowable));
        bh.A("Google Analytics is shutting down.");
        uI = true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */