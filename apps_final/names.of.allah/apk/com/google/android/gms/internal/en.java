package com.google.android.gms.internal;

public abstract class en
{
  private final Runnable le = new en.1(this);
  private volatile Thread sc;
  
  public abstract void bc();
  
  public final void cancel()
  {
    onStop();
    if (sc != null) {
      sc.interrupt();
    }
  }
  
  public abstract void onStop();
  
  public final void start()
  {
    eo.execute(le);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */