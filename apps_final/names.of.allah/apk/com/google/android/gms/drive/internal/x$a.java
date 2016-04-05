package com.google.android.gms.drive.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.events.DriveEvent.Listener;

class x$a<E extends DriveEvent>
  extends Handler
{
  private x$a(Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void a(DriveEvent.Listener<E> paramListener, E paramE)
  {
    sendMessage(obtainMessage(1, new Pair(paramListener, paramE)));
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      Log.wtf("EventCallback", "Don't know how to handle this event");
      return;
    }
    paramMessage = (Pair)obj;
    ((DriveEvent.Listener)first).onEvent((DriveEvent)second);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.x.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */