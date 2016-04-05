package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;
import com.google.android.gms.dynamic.e;

public final class cr
  implements SafeParcelable
{
  public static final cq CREATOR = new cq();
  public final dh kV;
  public final da kX;
  public final dc oR;
  public final Context oS;
  public final int versionCode;
  
  cr(int paramInt, IBinder paramIBinder1, IBinder paramIBinder2, IBinder paramIBinder3, IBinder paramIBinder4)
  {
    versionCode = paramInt;
    kV = ((dh)e.e(d.a.ag(paramIBinder1)));
    kX = ((da)e.e(d.a.ag(paramIBinder2)));
    oR = ((dc)e.e(d.a.ag(paramIBinder3)));
    oS = ((Context)e.e(d.a.ag(paramIBinder4)));
  }
  
  public cr(dc paramdc, dh paramdh, da paramda, Context paramContext)
  {
    versionCode = 1;
    oR = paramdc;
    kV = paramdh;
    kX = paramda;
    oS = paramContext;
  }
  
  public static void a(Intent paramIntent, cr paramcr)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", paramcr);
    paramIntent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", localBundle);
  }
  
  public static cr b(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
      paramIntent.setClassLoader(cr.class.getClassLoader());
      paramIntent = (cr)paramIntent.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
      return paramIntent;
    }
    catch (Exception paramIntent) {}
    return null;
  }
  
  final IBinder aY()
  {
    return e.h(kV).asBinder();
  }
  
  final IBinder aZ()
  {
    return e.h(kX).asBinder();
  }
  
  final IBinder ba()
  {
    return e.h(oR).asBinder();
  }
  
  final IBinder bb()
  {
    return e.h(oS).asBinder();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    cq.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */