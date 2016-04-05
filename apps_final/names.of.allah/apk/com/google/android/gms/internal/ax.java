package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class ax
  implements SafeParcelable
{
  public static final ay CREATOR = new ay();
  public final int backgroundColor;
  public final int mB;
  public final int mC;
  public final int mD;
  public final int mE;
  public final int mF;
  public final int mG;
  public final int mH;
  public final String mI;
  public final int mJ;
  public final String mK;
  public final int mL;
  public final int mM;
  public final String mN;
  public final int versionCode;
  
  ax(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, String paramString1, int paramInt10, String paramString2, int paramInt11, int paramInt12, String paramString3)
  {
    versionCode = paramInt1;
    mB = paramInt2;
    backgroundColor = paramInt3;
    mC = paramInt4;
    mD = paramInt5;
    mE = paramInt6;
    mF = paramInt7;
    mG = paramInt8;
    mH = paramInt9;
    mI = paramString1;
    mJ = paramInt10;
    mK = paramString2;
    mL = paramInt11;
    mM = paramInt12;
    mN = paramString3;
  }
  
  public ax(SearchAdRequest paramSearchAdRequest)
  {
    versionCode = 1;
    mB = paramSearchAdRequest.getAnchorTextColor();
    backgroundColor = paramSearchAdRequest.getBackgroundColor();
    mC = paramSearchAdRequest.getBackgroundGradientBottom();
    mD = paramSearchAdRequest.getBackgroundGradientTop();
    mE = paramSearchAdRequest.getBorderColor();
    mF = paramSearchAdRequest.getBorderThickness();
    mG = paramSearchAdRequest.getBorderType();
    mH = paramSearchAdRequest.getCallButtonColor();
    mI = paramSearchAdRequest.getCustomChannels();
    mJ = paramSearchAdRequest.getDescriptionTextColor();
    mK = paramSearchAdRequest.getFontFace();
    mL = paramSearchAdRequest.getHeaderTextColor();
    mM = paramSearchAdRequest.getHeaderTextSize();
    mN = paramSearchAdRequest.getQuery();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ay.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */