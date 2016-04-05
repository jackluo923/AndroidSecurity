package com.google.android.gms.internal;

import android.os.IInterface;
import com.google.android.gms.cast.LaunchOptions;

public abstract interface gm
  extends IInterface
{
  public abstract void a(double paramDouble1, double paramDouble2, boolean paramBoolean);
  
  public abstract void a(String paramString, LaunchOptions paramLaunchOptions);
  
  public abstract void a(String paramString1, String paramString2, long paramLong);
  
  public abstract void a(String paramString, byte[] paramArrayOfByte, long paramLong);
  
  public abstract void a(boolean paramBoolean1, double paramDouble, boolean paramBoolean2);
  
  public abstract void am(String paramString);
  
  public abstract void an(String paramString);
  
  public abstract void ao(String paramString);
  
  public abstract void disconnect();
  
  public abstract void e(String paramString, boolean paramBoolean);
  
  public abstract void eb();
  
  public abstract void ek();
  
  public abstract void h(String paramString1, String paramString2);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */