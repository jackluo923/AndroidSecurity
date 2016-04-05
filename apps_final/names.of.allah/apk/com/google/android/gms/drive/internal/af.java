package com.google.android.gms.drive.internal;

import com.google.android.gms.internal.lz;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;
import com.google.android.gms.internal.mf;
import java.util.List;

public final class af
  extends mb<af>
{
  public String Jq;
  public long Jr;
  public long Js;
  public int versionCode;
  
  public af()
  {
    gn();
  }
  
  public static af g(byte[] paramArrayOfByte)
  {
    return (af)mf.a(new af(), paramArrayOfByte);
  }
  
  public final void a(ma paramma)
  {
    paramma.p(1, versionCode);
    paramma.b(2, Jq);
    paramma.c(3, Jr);
    paramma.c(4, Js);
    super.a(paramma);
  }
  
  protected final int c()
  {
    return super.c() + ma.r(1, versionCode) + ma.h(2, Jq) + ma.e(3, Jr) + ma.e(4, Js);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof af)) {
        return false;
      }
      paramObject = (af)paramObject;
      if (versionCode != versionCode) {
        return false;
      }
      if (Jq == null)
      {
        if (Jq != null) {
          return false;
        }
      }
      else if (!Jq.equals(Jq)) {
        return false;
      }
      if (Jr != Jr) {
        return false;
      }
      if (Js != Js) {
        return false;
      }
      if ((amU != null) && (!amU.isEmpty())) {
        break;
      }
    } while ((amU == null) || (amU.isEmpty()));
    return false;
    return amU.equals(amU);
  }
  
  public final af gn()
  {
    versionCode = 1;
    Jq = "";
    Jr = -1L;
    Js = -1L;
    amU = null;
    amY = -1;
    return this;
  }
  
  public final int hashCode()
  {
    int k = 0;
    int m = versionCode;
    int i;
    int n;
    int i1;
    if (Jq == null)
    {
      i = 0;
      n = (int)(Jr ^ Jr >>> 32);
      i1 = (int)(Js ^ Js >>> 32);
      j = k;
      if (amU != null) {
        if (!amU.isEmpty()) {
          break label110;
        }
      }
    }
    label110:
    for (int j = k;; j = amU.hashCode())
    {
      return (((i + (m + 527) * 31) * 31 + n) * 31 + i1) * 31 + j;
      i = Jq.hashCode();
      break;
    }
  }
  
  public final af m(lz paramlz)
  {
    for (;;)
    {
      int i = paramlz.nw();
      switch (i)
      {
      default: 
        if (a(paramlz, i)) {}
        break;
      case 0: 
        return this;
      case 8: 
        versionCode = paramlz.nz();
        break;
      case 18: 
        Jq = paramlz.readString();
        break;
      case 24: 
        Jr = paramlz.nC();
        break;
      case 32: 
        Js = paramlz.nC();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */