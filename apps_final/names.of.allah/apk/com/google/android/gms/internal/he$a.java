package com.google.android.gms.internal;

import android.content.ComponentName;
import android.os.IBinder;
import java.util.HashSet;

final class he$a
{
  private ComponentName GA;
  private final String Gv;
  private final he.a.a Gw;
  private final HashSet<hc<?>.f> Gx;
  private boolean Gy;
  private IBinder Gz;
  private int mState;
  
  public he$a(he paramhe, String paramString)
  {
    Gv = paramString;
    Gw = new he.a.a(this);
    Gx = new HashSet();
    mState = 0;
  }
  
  public final void B(boolean paramBoolean)
  {
    Gy = paramBoolean;
  }
  
  public final void a(hc<?>.f paramhc)
  {
    Gx.add(paramhc);
  }
  
  public final void b(hc<?>.f paramhc)
  {
    Gx.remove(paramhc);
  }
  
  public final boolean c(hc<?>.f paramhc)
  {
    return Gx.contains(paramhc);
  }
  
  public final he.a.a fs()
  {
    return Gw;
  }
  
  public final String ft()
  {
    return Gv;
  }
  
  public final boolean fu()
  {
    return Gx.isEmpty();
  }
  
  public final IBinder getBinder()
  {
    return Gz;
  }
  
  public final ComponentName getComponentName()
  {
    return GA;
  }
  
  public final int getState()
  {
    return mState;
  }
  
  public final boolean isBound()
  {
    return Gy;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.he.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */