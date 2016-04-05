package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LineItem
  implements SafeParcelable
{
  public static final Parcelable.Creator<LineItem> CREATOR = new i();
  String aiH;
  String aiI;
  String ajb;
  String ajc;
  int ajd;
  String description;
  private final int xJ;
  
  LineItem()
  {
    xJ = 1;
    ajd = 0;
  }
  
  LineItem(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt2, String paramString5)
  {
    xJ = paramInt1;
    description = paramString1;
    ajb = paramString2;
    ajc = paramString3;
    aiH = paramString4;
    ajd = paramInt2;
    aiI = paramString5;
  }
  
  public static LineItem.Builder newBuilder()
  {
    LineItem localLineItem = new LineItem();
    localLineItem.getClass();
    return new LineItem.Builder(localLineItem, null);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getCurrencyCode()
  {
    return aiI;
  }
  
  public final String getDescription()
  {
    return description;
  }
  
  public final String getQuantity()
  {
    return ajb;
  }
  
  public final int getRole()
  {
    return ajd;
  }
  
  public final String getTotalPrice()
  {
    return aiH;
  }
  
  public final String getUnitPrice()
  {
    return ajc;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.LineItem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */