package com.squareup.okhttp.internal;

public abstract class NamedRunnable
  implements Runnable
{
  private String name;
  
  public NamedRunnable(String paramString)
  {
    name = paramString;
  }
  
  protected abstract void execute();
  
  public final void run()
  {
    String str = Thread.currentThread().getName();
    Thread.currentThread().setName(name);
    try
    {
      execute();
      return;
    }
    finally
    {
      Thread.currentThread().setName(str);
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.NamedRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */