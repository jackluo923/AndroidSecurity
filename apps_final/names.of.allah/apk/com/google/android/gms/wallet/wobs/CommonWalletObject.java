package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ih;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;

public class CommonWalletObject
  implements SafeParcelable
{
  public static final Parcelable.Creator<CommonWalletObject> CREATOR = new a();
  String ajg;
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
  ArrayList<j> ajw;
  ArrayList<n> ajx;
  String eC;
  String name;
  int state;
  private final int xJ;
  
  CommonWalletObject()
  {
    xJ = 1;
    ajo = ih.fV();
    ajq = ih.fV();
    ajt = ih.fV();
    ajv = ih.fV();
    ajw = ih.fV();
    ajx = ih.fV();
  }
  
  CommonWalletObject(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, int paramInt2, ArrayList<p> paramArrayList, l paraml, ArrayList<LatLng> paramArrayList1, String paramString9, String paramString10, ArrayList<d> paramArrayList2, boolean paramBoolean, ArrayList<n> paramArrayList3, ArrayList<j> paramArrayList4, ArrayList<n> paramArrayList5)
  {
    xJ = paramInt1;
    eC = paramString1;
    ajn = paramString2;
    name = paramString3;
    ajg = paramString4;
    ajj = paramString5;
    ajk = paramString6;
    ajl = paramString7;
    ajm = paramString8;
    state = paramInt2;
    ajo = paramArrayList;
    ajp = paraml;
    ajq = paramArrayList1;
    ajr = paramString9;
    ajs = paramString10;
    ajt = paramArrayList2;
    aju = paramBoolean;
    ajv = paramArrayList3;
    ajw = paramArrayList4;
    ajx = paramArrayList5;
  }
  
  public static CommonWalletObject.a nf()
  {
    CommonWalletObject localCommonWalletObject = new CommonWalletObject();
    localCommonWalletObject.getClass();
    return new CommonWalletObject.a(localCommonWalletObject, null);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return eC;
  }
  
  public int getVersionCode()
  {
    return xJ;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.CommonWalletObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */