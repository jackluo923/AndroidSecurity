package com.google.android.youtube.player.internal;

import java.util.ArrayList;

public abstract class r$b<TListener>
{
  private TListener b;
  
  public r$b(TListener paramTListener)
  {
    b = ???;
    synchronized (r.c(paramTListener))
    {
      r.c(paramTListener).add(this);
      return;
    }
  }
  
  public final void a()
  {
    try
    {
      Object localObject1 = b;
      a(localObject1);
      return;
    }
    finally {}
  }
  
  protected abstract void a(TListener paramTListener);
  
  public final void b()
  {
    try
    {
      b = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.r.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */