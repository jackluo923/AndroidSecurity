package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;
import com.google.android.gms.dynamic.e;

public final class ci
  implements SafeParcelable
{
  public static final ch CREATOR = new ch();
  public final ew kO;
  public final String nZ;
  public final String oA;
  public final cm oB;
  public final int oC;
  public final be oD;
  public final String oE;
  public final w oF;
  public final int orientation;
  public final cf ot;
  public final u ou;
  public final cj ov;
  public final ey ow;
  public final bb ox;
  public final String oy;
  public final boolean oz;
  public final int versionCode;
  
  ci(int paramInt1, cf paramcf, IBinder paramIBinder1, IBinder paramIBinder2, IBinder paramIBinder3, IBinder paramIBinder4, String paramString1, boolean paramBoolean, String paramString2, IBinder paramIBinder5, int paramInt2, int paramInt3, String paramString3, ew paramew, IBinder paramIBinder6, String paramString4, w paramw)
  {
    versionCode = paramInt1;
    ot = paramcf;
    ou = ((u)e.e(d.a.ag(paramIBinder1)));
    ov = ((cj)e.e(d.a.ag(paramIBinder2)));
    ow = ((ey)e.e(d.a.ag(paramIBinder3)));
    ox = ((bb)e.e(d.a.ag(paramIBinder4)));
    oy = paramString1;
    oz = paramBoolean;
    oA = paramString2;
    oB = ((cm)e.e(d.a.ag(paramIBinder5)));
    orientation = paramInt2;
    oC = paramInt3;
    nZ = paramString3;
    kO = paramew;
    oD = ((be)e.e(d.a.ag(paramIBinder6)));
    oE = paramString4;
    oF = paramw;
  }
  
  public ci(cf paramcf, u paramu, cj paramcj, cm paramcm, ew paramew)
  {
    versionCode = 4;
    ot = paramcf;
    ou = paramu;
    ov = paramcj;
    ow = null;
    ox = null;
    oy = null;
    oz = false;
    oA = null;
    oB = paramcm;
    orientation = -1;
    oC = 4;
    nZ = null;
    kO = paramew;
    oD = null;
    oE = null;
    oF = null;
  }
  
  public ci(u paramu, cj paramcj, bb parambb, cm paramcm, ey paramey, boolean paramBoolean, int paramInt, String paramString, ew paramew, be parambe)
  {
    versionCode = 4;
    ot = null;
    ou = paramu;
    ov = paramcj;
    ow = paramey;
    ox = parambb;
    oy = null;
    oz = paramBoolean;
    oA = null;
    oB = paramcm;
    orientation = paramInt;
    oC = 3;
    nZ = paramString;
    kO = paramew;
    oD = parambe;
    oE = null;
    oF = null;
  }
  
  public ci(u paramu, cj paramcj, bb parambb, cm paramcm, ey paramey, boolean paramBoolean, int paramInt, String paramString1, String paramString2, ew paramew, be parambe)
  {
    versionCode = 4;
    ot = null;
    ou = paramu;
    ov = paramcj;
    ow = paramey;
    ox = parambb;
    oy = paramString2;
    oz = paramBoolean;
    oA = paramString1;
    oB = paramcm;
    orientation = paramInt;
    oC = 3;
    nZ = null;
    kO = paramew;
    oD = parambe;
    oE = null;
    oF = null;
  }
  
  public ci(u paramu, cj paramcj, cm paramcm, ey paramey, int paramInt, ew paramew, String paramString, w paramw)
  {
    versionCode = 4;
    ot = null;
    ou = paramu;
    ov = paramcj;
    ow = paramey;
    ox = null;
    oy = null;
    oz = false;
    oA = null;
    oB = paramcm;
    orientation = paramInt;
    oC = 1;
    nZ = null;
    kO = paramew;
    oD = null;
    oE = paramString;
    oF = paramw;
  }
  
  public ci(u paramu, cj paramcj, cm paramcm, ey paramey, boolean paramBoolean, int paramInt, ew paramew)
  {
    versionCode = 4;
    ot = null;
    ou = paramu;
    ov = paramcj;
    ow = paramey;
    ox = null;
    oy = null;
    oz = paramBoolean;
    oA = null;
    oB = paramcm;
    orientation = paramInt;
    oC = 2;
    nZ = null;
    kO = paramew;
    oD = null;
    oE = null;
    oF = null;
  }
  
  public static ci a(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
      paramIntent.setClassLoader(ci.class.getClassLoader());
      paramIntent = (ci)paramIntent.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
      return paramIntent;
    }
    catch (Exception paramIntent) {}
    return null;
  }
  
  public static void a(Intent paramIntent, ci paramci)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", paramci);
    paramIntent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", localBundle);
  }
  
  final IBinder aP()
  {
    return e.h(ou).asBinder();
  }
  
  final IBinder aQ()
  {
    return e.h(ov).asBinder();
  }
  
  final IBinder aR()
  {
    return e.h(ow).asBinder();
  }
  
  final IBinder aS()
  {
    return e.h(ox).asBinder();
  }
  
  final IBinder aT()
  {
    return e.h(oD).asBinder();
  }
  
  final IBinder aU()
  {
    return e.h(oB).asBinder();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ch.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */