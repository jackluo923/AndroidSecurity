package com.google.android.gms.plus.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.IInterface;
import com.google.android.gms.internal.hh;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.if;
import java.util.List;

public abstract interface d
  extends IInterface
{
  public abstract hh a(b paramb, int paramInt1, int paramInt2, int paramInt3, String paramString);
  
  public abstract void a(if paramif);
  
  public abstract void a(b paramb);
  
  public abstract void a(b paramb, int paramInt, String paramString1, Uri paramUri, String paramString2, String paramString3);
  
  public abstract void a(b paramb, Uri paramUri, Bundle paramBundle);
  
  public abstract void a(b paramb, if paramif);
  
  public abstract void a(b paramb, String paramString);
  
  public abstract void a(b paramb, String paramString1, String paramString2);
  
  public abstract void a(b paramb, List<String> paramList);
  
  public abstract void a(String paramString, hs paramhs1, hs paramhs2);
  
  public abstract void b(b paramb);
  
  public abstract void b(b paramb, String paramString);
  
  public abstract void c(b paramb, String paramString);
  
  public abstract void clearDefaultAccount();
  
  public abstract void d(b paramb, String paramString);
  
  public abstract void e(b paramb, String paramString);
  
  public abstract String getAccountName();
  
  public abstract String jP();
  
  public abstract boolean jQ();
  
  public abstract String jR();
  
  public abstract void removeMoment(String paramString);
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */