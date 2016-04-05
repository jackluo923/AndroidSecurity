package com.google.android.gms.common.api;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.internal.hn;

public abstract class a$b<R extends Result, A extends Api.a>
  extends a.a<R>
  implements c.c<A>
{
  private final Api.c<A> Dk;
  private c.a Dv;
  
  public a$b(Api.c<A> paramc)
  {
    Dk = ((Api.c)hn.f(paramc));
  }
  
  private void a(RemoteException paramRemoteException)
  {
    m(new Status(8, paramRemoteException.getLocalizedMessage(), null));
  }
  
  protected abstract void a(A paramA);
  
  public void a(c.a parama)
  {
    Dv = parama;
  }
  
  public final void b(A paramA)
  {
    a(new a.c(paramA.getLooper()));
    try
    {
      a(paramA);
      return;
    }
    catch (DeadObjectException paramA)
    {
      a(paramA);
      throw paramA;
    }
    catch (RemoteException paramA)
    {
      a(paramA);
    }
  }
  
  public int eB()
  {
    return 0;
  }
  
  public final Api.c<A> ew()
  {
    return Dk;
  }
  
  protected void ey()
  {
    super.ey();
    if (Dv != null)
    {
      Dv.b(this);
      Dv = null;
    }
  }
  
  public final void m(Status paramStatus)
  {
    if (!paramStatus.isSuccess()) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "Failed result must not be success");
      b(c(paramStatus));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */