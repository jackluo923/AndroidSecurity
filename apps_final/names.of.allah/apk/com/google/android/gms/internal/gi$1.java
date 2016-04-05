package com.google.android.gms.internal;

import android.os.Handler;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

class gi$1
  extends gn.a
{
  gi$1(gi paramgi) {}
  
  private boolean X(int paramInt)
  {
    synchronized ()
    {
      if (gi.i(BZ) != null)
      {
        gi.i(BZ).a(new Status(paramInt));
        gi.b(BZ, null);
        return true;
      }
      return false;
    }
  }
  
  private void b(long paramLong, int paramInt)
  {
    synchronized (gi.h(BZ))
    {
      a.d locald = (a.d)gi.h(BZ).remove(Long.valueOf(paramLong));
      if (locald != null) {
        locald.a(new Status(paramInt));
      }
      return;
    }
  }
  
  public void T(int paramInt)
  {
    gi.ef().b("ICastDeviceControllerListener.onDisconnected: %d", new Object[] { Integer.valueOf(paramInt) });
    gi.a(BZ, false);
    gi.b(BZ).set(false);
    gi.a(BZ, null);
    if (paramInt != 0) {
      BZ.an(2);
    }
  }
  
  public void U(int paramInt)
  {
    synchronized ()
    {
      if (gi.c(BZ) != null)
      {
        gi.c(BZ).a(new gi.a(new Status(paramInt)));
        gi.a(BZ, null);
      }
      return;
    }
  }
  
  public void V(int paramInt)
  {
    X(paramInt);
  }
  
  public void W(int paramInt)
  {
    X(paramInt);
  }
  
  public void a(ApplicationMetadata paramApplicationMetadata, String paramString1, String paramString2, boolean paramBoolean)
  {
    gi.a(BZ, paramApplicationMetadata);
    gi.a(BZ, paramApplicationMetadata.getApplicationId());
    gi.b(BZ, paramString2);
    synchronized (gi.eg())
    {
      if (gi.c(BZ) != null)
      {
        gi.c(BZ).a(new gi.a(new Status(0), paramApplicationMetadata, paramString1, paramString2, paramBoolean));
        gi.a(BZ, null);
      }
      return;
    }
  }
  
  public void a(String paramString, double paramDouble, boolean paramBoolean)
  {
    gi.ef().b("Deprecated callback: \"onStatusreceived\"", new Object[0]);
  }
  
  public void a(String paramString, long paramLong)
  {
    b(paramLong, 0);
  }
  
  public void a(String paramString, long paramLong, int paramInt)
  {
    b(paramLong, paramInt);
  }
  
  public void b(gf paramgf)
  {
    gi.ef().b("onApplicationStatusChanged", new Object[0]);
    gi.e(BZ).post(new gi.1.3(this, paramgf));
  }
  
  public void b(gk paramgk)
  {
    gi.ef().b("onDeviceStatusChanged", new Object[0]);
    gi.e(BZ).post(new gi.1.2(this, paramgk));
  }
  
  public void b(String paramString, byte[] paramArrayOfByte)
  {
    gi.ef().b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", new Object[] { paramString, Integer.valueOf(paramArrayOfByte.length) });
  }
  
  public void g(String paramString1, String paramString2)
  {
    gi.ef().b("Receive (type=text, ns=%s) %s", new Object[] { paramString1, paramString2 });
    gi.e(BZ).post(new gi.1.4(this, paramString1, paramString2));
  }
  
  public void onApplicationDisconnected(int paramInt)
  {
    gi.a(BZ, null);
    gi.b(BZ, null);
    X(paramInt);
    if (gi.d(BZ) != null) {
      gi.e(BZ).post(new gi.1.1(this, paramInt));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gi.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */