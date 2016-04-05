package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class e
  implements Parcelable.Creator<d>
{
  static void a(d paramd, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, paramd.getVersionCode());
    b.a(paramParcel, 2, aiL, paramInt, false);
    b.a(paramParcel, 3, aiM, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public d bT(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    LoyaltyWalletObject localLoyaltyWalletObject = null;
    int i = 0;
    OfferWalletObject localOfferWalletObject = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localLoyaltyWalletObject = (LoyaltyWalletObject)a.a(paramParcel, k, LoyaltyWalletObject.CREATOR);
        break;
      case 3: 
        localOfferWalletObject = (OfferWalletObject)a.a(paramParcel, k, OfferWalletObject.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new d(i, localLoyaltyWalletObject, localOfferWalletObject);
  }
  
  public d[] dz(int paramInt)
  {
    return new d[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */