package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.kt;

public abstract interface b
  extends IInterface
{
  public abstract void a(int paramInt, Bundle paramBundle1, Bundle paramBundle2);
  
  public abstract void a(int paramInt, Bundle paramBundle, ParcelFileDescriptor paramParcelFileDescriptor);
  
  public abstract void a(int paramInt, Bundle paramBundle, if paramif);
  
  public abstract void a(int paramInt, kt paramkt);
  
  public abstract void a(DataHolder paramDataHolder, String paramString);
  
  public abstract void a(DataHolder paramDataHolder, String paramString1, String paramString2);
  
  public abstract void am(Status paramStatus);
  
  public abstract void bw(String paramString);
  
  public abstract void bx(String paramString);
  
  public abstract void h(int paramInt, Bundle paramBundle);
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */