package com.google.android.gms.internal;

import android.os.IInterface;
import com.google.android.gms.dynamic.d;

public abstract interface bv
  extends IInterface
{
  public abstract void a(d paramd, aj paramaj, String paramString, bw parambw);
  
  public abstract void a(d paramd, aj paramaj, String paramString1, String paramString2, bw parambw);
  
  public abstract void a(d paramd, am paramam, aj paramaj, String paramString, bw parambw);
  
  public abstract void a(d paramd, am paramam, aj paramaj, String paramString1, String paramString2, bw parambw);
  
  public abstract void destroy();
  
  public abstract d getView();
  
  public abstract void pause();
  
  public abstract void resume();
  
  public abstract void showInterstitial();
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */