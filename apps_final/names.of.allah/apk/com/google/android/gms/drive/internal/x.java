package com.google.android.gms.drive.internal;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.drive.events.DriveEvent;
import com.google.android.gms.drive.events.DriveEvent.Listener;
import com.google.android.gms.internal.hn;

public class x<C extends DriveEvent>
  extends ac.a
{
  private final int In;
  private final DriveEvent.Listener<C> Jk;
  private final x.a<C> Jl;
  
  public x(Looper paramLooper, int paramInt, DriveEvent.Listener<C> paramListener)
  {
    In = paramInt;
    Jk = paramListener;
    Jl = new x.a(paramLooper, null);
  }
  
  public void a(OnEventResponse paramOnEventResponse)
  {
    if (In == paramOnEventResponse.getEventType()) {}
    for (boolean bool = true;; bool = false)
    {
      hn.A(bool);
      switch (paramOnEventResponse.getEventType())
      {
      default: 
        Log.w("EventCallback", "Unexpected event type:" + paramOnEventResponse.getEventType());
        return;
      }
    }
    Jl.a(Jk, paramOnEventResponse.gr());
    return;
    Jl.a(Jk, paramOnEventResponse.gs());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */