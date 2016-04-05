package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import java.util.HashMap;

public final class he
  implements Handler.Callback
{
  private static final Object Gs = new Object();
  private static he Gt;
  private final HashMap<String, he.a> Gu = new HashMap();
  private final Context lx;
  private final Handler mHandler = new Handler(paramContext.getMainLooper(), this);
  
  private he(Context paramContext)
  {
    lx = paramContext.getApplicationContext();
  }
  
  public static he B(Context paramContext)
  {
    synchronized (Gs)
    {
      if (Gt == null) {
        Gt = new he(paramContext.getApplicationContext());
      }
      return Gt;
    }
  }
  
  public final boolean a(String paramString, hc<?>.f paramhc)
  {
    for (;;)
    {
      he.a locala;
      synchronized (Gu)
      {
        locala = (he.a)Gu.get(paramString);
        if (locala == null)
        {
          locala = new he.a(this, paramString);
          locala.a(paramhc);
          paramhc = new Intent(paramString).setPackage("com.google.android.gms");
          locala.B(lx.bindService(paramhc, locala.fs(), 129));
          Gu.put(paramString, locala);
          paramString = locala;
          boolean bool = paramString.isBound();
          return bool;
        }
        mHandler.removeMessages(0, locala);
        if (locala.c(paramhc)) {
          throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  startServiceAction=" + paramString);
        }
      }
      locala.a(paramhc);
      switch (locala.getState())
      {
      case 1: 
        paramhc.onServiceConnected(locala.getComponentName(), locala.getBinder());
        paramString = locala;
        break;
      case 2: 
        paramString = new Intent(paramString).setPackage("com.google.android.gms");
        locala.B(lx.bindService(paramString, locala.fs(), 129));
        paramString = locala;
        break;
      default: 
        paramString = locala;
      }
    }
  }
  
  public final void b(String paramString, hc<?>.f paramhc)
  {
    he.a locala;
    synchronized (Gu)
    {
      locala = (he.a)Gu.get(paramString);
      if (locala == null) {
        throw new IllegalStateException("Nonexistent connection status for service action: " + paramString);
      }
    }
    if (!locala.c(paramhc)) {
      throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  startServiceAction=" + paramString);
    }
    locala.b(paramhc);
    if (locala.fu())
    {
      paramString = mHandler.obtainMessage(0, locala);
      mHandler.sendMessageDelayed(paramString, 5000L);
    }
  }
  
  public final boolean handleMessage(Message arg1)
  {
    switch (what)
    {
    default: 
      return false;
    }
    he.a locala = (he.a)obj;
    synchronized (Gu)
    {
      if (locala.fu())
      {
        lx.unbindService(locala.fs());
        Gu.remove(locala.ft());
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.he
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */