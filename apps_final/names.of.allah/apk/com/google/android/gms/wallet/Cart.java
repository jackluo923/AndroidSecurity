package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;

public final class Cart
  implements SafeParcelable
{
  public static final Parcelable.Creator<Cart> CREATOR = new b();
  String aiH;
  String aiI;
  ArrayList<LineItem> aiJ;
  private final int xJ;
  
  Cart()
  {
    xJ = 1;
    aiJ = new ArrayList();
  }
  
  Cart(int paramInt, String paramString1, String paramString2, ArrayList<LineItem> paramArrayList)
  {
    xJ = paramInt;
    aiH = paramString1;
    aiI = paramString2;
    aiJ = paramArrayList;
  }
  
  public static Cart.Builder newBuilder()
  {
    Cart localCart = new Cart();
    localCart.getClass();
    return new Cart.Builder(localCart, null);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getCurrencyCode()
  {
    return aiI;
  }
  
  public final ArrayList<LineItem> getLineItems()
  {
    return aiJ;
  }
  
  public final String getTotalPrice()
  {
    return aiH;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.Cart
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */