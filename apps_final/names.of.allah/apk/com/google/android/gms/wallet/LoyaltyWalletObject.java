package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ih;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.wallet.wobs.d;
import com.google.android.gms.wallet.wobs.f;
import com.google.android.gms.wallet.wobs.l;
import com.google.android.gms.wallet.wobs.n;
import com.google.android.gms.wallet.wobs.p;
import java.util.ArrayList;

public final class LoyaltyWalletObject
  implements SafeParcelable
{
  public static final Parcelable.Creator<LoyaltyWalletObject> CREATOR = new j();
  String ajf;
  String ajg;
  String ajh;
  String aji;
  String ajj;
  String ajk;
  String ajl;
  String ajm;
  String ajn;
  ArrayList<p> ajo;
  l ajp;
  ArrayList<LatLng> ajq;
  String ajr;
  String ajs;
  ArrayList<d> ajt;
  boolean aju;
  ArrayList<n> ajv;
  ArrayList<com.google.android.gms.wallet.wobs.j> ajw;
  ArrayList<n> ajx;
  f ajy;
  String eC;
  int state;
  private final int xJ;
  
  LoyaltyWalletObject()
  {
    xJ = 4;
    ajo = ih.fV();
    ajq = ih.fV();
    ajt = ih.fV();
    ajv = ih.fV();
    ajw = ih.fV();
    ajx = ih.fV();
  }
  
  LoyaltyWalletObject(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, int paramInt2, ArrayList<p> paramArrayList, l paraml, ArrayList<LatLng> paramArrayList1, String paramString11, String paramString12, ArrayList<d> paramArrayList2, boolean paramBoolean, ArrayList<n> paramArrayList3, ArrayList<com.google.android.gms.wallet.wobs.j> paramArrayList4, ArrayList<n> paramArrayList5, f paramf)
  {
    xJ = paramInt1;
    eC = paramString1;
    ajf = paramString2;
    ajg = paramString3;
    ajh = paramString4;
    aji = paramString5;
    ajj = paramString6;
    ajk = paramString7;
    ajl = paramString8;
    ajm = paramString9;
    ajn = paramString10;
    state = paramInt2;
    ajo = paramArrayList;
    ajp = paraml;
    ajq = paramArrayList1;
    ajr = paramString11;
    ajs = paramString12;
    ajt = paramArrayList2;
    aju = paramBoolean;
    ajv = paramArrayList3;
    ajw = paramArrayList4;
    ajx = paramArrayList5;
    ajy = paramf;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getAccountId()
  {
    return ajf;
  }
  
  public final String getAccountName()
  {
    return aji;
  }
  
  public final String getBarcodeAlternateText()
  {
    return ajj;
  }
  
  public final String getBarcodeType()
  {
    return ajk;
  }
  
  public final String getBarcodeValue()
  {
    return ajl;
  }
  
  public final String getId()
  {
    return eC;
  }
  
  public final String getIssuerName()
  {
    return ajg;
  }
  
  public final String getProgramName()
  {
    return ajh;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.LoyaltyWalletObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */