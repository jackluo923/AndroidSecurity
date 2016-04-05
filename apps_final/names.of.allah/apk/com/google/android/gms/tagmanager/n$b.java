package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class n$b
  extends Handler
{
  private final ContainerHolder.ContainerAvailableListener aeD;
  
  public n$b(n paramn, ContainerHolder.ContainerAvailableListener paramContainerAvailableListener, Looper paramLooper)
  {
    super(paramLooper);
    aeD = paramContainerAvailableListener;
  }
  
  public void bK(String paramString)
  {
    sendMessage(obtainMessage(1, paramString));
  }
  
  protected void bL(String paramString)
  {
    aeD.onContainerAvailable(aeE, paramString);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      bh.A("Don't know how to handle this message.");
      return;
    }
    bL((String)obj);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.n.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */