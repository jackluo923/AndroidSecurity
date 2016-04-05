package com.google.android.youtube.player.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.youtube.player.YouTubeThumbnailView;

public final class p
  extends a
{
  private final Handler a;
  private b b;
  private k c;
  private boolean d;
  private boolean e;
  
  public p(b paramb, YouTubeThumbnailView paramYouTubeThumbnailView)
  {
    super(paramYouTubeThumbnailView);
    b = ((b)ac.a(paramb, "connectionClient cannot be null"));
    c = paramb.a(new p.a(this, (byte)0));
    a = new Handler(Looper.getMainLooper());
  }
  
  public final void a(String paramString)
  {
    try
    {
      c.a(paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new IllegalStateException(paramString);
    }
  }
  
  public final void a(String paramString, int paramInt)
  {
    try
    {
      c.a(paramString, paramInt);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new IllegalStateException(paramString);
    }
  }
  
  protected final boolean a()
  {
    return (super.a()) && (c != null);
  }
  
  public final void b()
  {
    try
    {
      c.a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public final void c()
  {
    try
    {
      c.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public final void d()
  {
    try
    {
      c.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public final boolean e()
  {
    return e;
  }
  
  public final boolean f()
  {
    return d;
  }
  
  public final void g()
  {
    try
    {
      c.d();
      b.d();
      c = null;
      b = null;
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */