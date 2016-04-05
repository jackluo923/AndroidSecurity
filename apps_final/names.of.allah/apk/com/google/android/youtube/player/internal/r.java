package com.google.android.youtube.player.internal;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.youtube.player.YouTubeApiServiceUtil;
import com.google.android.youtube.player.YouTubeInitializationResult;
import java.util.ArrayList;

public abstract class r<T extends IInterface>
  implements t
{
  final Handler a;
  private final Context b;
  private T c;
  private ArrayList<t.a> d;
  private final ArrayList<t.a> e = new ArrayList();
  private boolean f = false;
  private ArrayList<t.b> g;
  private boolean h = false;
  private final ArrayList<r<T>.b<?>> i = new ArrayList();
  private ServiceConnection j;
  private boolean k = false;
  
  protected r(Context paramContext, t.a parama, t.b paramb)
  {
    if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
      throw new IllegalStateException("Clients must be created on the UI thread.");
    }
    b = ((Context)ac.a(paramContext));
    d = new ArrayList();
    d.add(ac.a(parama));
    g = new ArrayList();
    g.add(ac.a(paramb));
    a = new r.a(this);
  }
  
  private static YouTubeInitializationResult b(String paramString)
  {
    try
    {
      paramString = YouTubeInitializationResult.valueOf(paramString);
      return paramString;
    }
    catch (IllegalArgumentException paramString)
    {
      return YouTubeInitializationResult.UNKNOWN_ERROR;
    }
    catch (NullPointerException paramString) {}
    return YouTubeInitializationResult.UNKNOWN_ERROR;
  }
  
  protected abstract T a(IBinder paramIBinder);
  
  protected final void a(YouTubeInitializationResult paramYouTubeInitializationResult)
  {
    a.removeMessages(4);
    for (;;)
    {
      int m;
      synchronized (g)
      {
        h = true;
        ArrayList localArrayList2 = g;
        int n = localArrayList2.size();
        m = 0;
        if (m < n)
        {
          if (!k) {
            return;
          }
          if (g.contains(localArrayList2.get(m))) {
            ((t.b)localArrayList2.get(m)).a(paramYouTubeInitializationResult);
          }
        }
        else
        {
          h = false;
          return;
        }
      }
      m += 1;
    }
  }
  
  protected abstract void a(i parami, r<T>.d paramr);
  
  protected abstract String b();
  
  protected final void b(IBinder paramIBinder)
  {
    try
    {
      a(i.a.a(paramIBinder), new r.d(this));
      return;
    }
    catch (RemoteException paramIBinder)
    {
      Log.w("YouTubeClient", "service died");
    }
  }
  
  protected abstract String c();
  
  public void d()
  {
    h();
    k = false;
    synchronized (i)
    {
      int n = i.size();
      int m = 0;
      while (m < n)
      {
        ((r.b)i.get(m)).b();
        m += 1;
      }
      i.clear();
      c = null;
      if (j != null)
      {
        b.unbindService(j);
        j = null;
      }
      return;
    }
  }
  
  public final void e()
  {
    k = true;
    Object localObject = YouTubeApiServiceUtil.isYouTubeApiServiceAvailable(b);
    if (localObject != YouTubeInitializationResult.SUCCESS) {
      a.sendMessage(a.obtainMessage(3, localObject));
    }
    do
    {
      return;
      localObject = new Intent(c());
      if (j != null)
      {
        Log.e("YouTubeClient", "Calling connect() while still connected, missing disconnect().");
        c = null;
        b.unbindService(j);
      }
      j = new r.e(this);
    } while (b.bindService((Intent)localObject, j, 129));
    a.sendMessage(a.obtainMessage(3, YouTubeInitializationResult.ERROR_CONNECTING_TO_SERVICE));
  }
  
  public final boolean f()
  {
    return c != null;
  }
  
  protected final void g()
  {
    boolean bool2 = true;
    for (;;)
    {
      int m;
      synchronized (d)
      {
        if (f) {
          break label156;
        }
        bool1 = true;
        ac.a(bool1);
        a.removeMessages(4);
        f = true;
        if (e.size() != 0) {
          break label162;
        }
        bool1 = bool2;
        ac.a(bool1);
        ArrayList localArrayList2 = d;
        int n = localArrayList2.size();
        m = 0;
        if ((m < n) && (k) && (f()))
        {
          e.size();
          if (!e.contains(localArrayList2.get(m))) {
            ((t.a)localArrayList2.get(m)).a();
          }
        }
        else
        {
          e.clear();
          f = false;
          return;
        }
      }
      m += 1;
      continue;
      label156:
      boolean bool1 = false;
      continue;
      label162:
      bool1 = false;
    }
  }
  
  protected final void h()
  {
    a.removeMessages(4);
    for (;;)
    {
      int m;
      synchronized (d)
      {
        f = true;
        ArrayList localArrayList2 = d;
        int n = localArrayList2.size();
        m = 0;
        if ((m < n) && (k))
        {
          if (d.contains(localArrayList2.get(m))) {
            ((t.a)localArrayList2.get(m)).b();
          }
        }
        else
        {
          f = false;
          return;
        }
      }
      m += 1;
    }
  }
  
  protected final void i()
  {
    if (!f()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  protected final T j()
  {
    i();
    return c;
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */