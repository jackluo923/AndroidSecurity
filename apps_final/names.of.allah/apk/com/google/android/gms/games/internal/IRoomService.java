package com.google.android.gms.games.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.data.DataHolder;

public abstract interface IRoomService
  extends IInterface
{
  public abstract void G(boolean paramBoolean);
  
  public abstract void a(IBinder paramIBinder, IRoomServiceCallbacks paramIRoomServiceCallbacks);
  
  public abstract void a(DataHolder paramDataHolder, boolean paramBoolean);
  
  public abstract void a(byte[] paramArrayOfByte, String paramString, int paramInt);
  
  public abstract void a(byte[] paramArrayOfByte, String[] paramArrayOfString);
  
  public abstract void be(String paramString);
  
  public abstract void bf(String paramString);
  
  public abstract void c(String paramString1, String paramString2, String paramString3);
  
  public abstract void hA();
  
  public abstract void hB();
  
  public abstract void hC();
  
  public abstract void hD();
  
  public abstract void r(String paramString, int paramInt);
  
  public abstract void s(String paramString, int paramInt);
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.IRoomService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */