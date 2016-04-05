package com.appyet.f;

import android.os.Process;
import java.util.concurrent.atomic.AtomicBoolean;

final class c
  extends i<Params, Result>
{
  c(a parama)
  {
    super((byte)0);
  }
  
  public final Result call()
  {
    a.a(a).set(true);
    Process.setThreadPriority(10);
    a locala1 = a;
    a locala2 = a;
    Object[] arrayOfObject = b;
    return (Result)a.a(locala1, locala2.b());
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */