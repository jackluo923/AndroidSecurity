package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
import java.util.List;

public class jv
  implements SafeParcelable
{
  public static final Parcelable.Creator<jv> CREATOR = new jw();
  private final LatLng YH;
  private final String YI;
  private final List<jt> YJ;
  private final String YK;
  private final String YL;
  private final String mName;
  final int xJ;
  
  jv(int paramInt, String paramString1, LatLng paramLatLng, String paramString2, List<jt> paramList, String paramString3, String paramString4)
  {
    xJ = paramInt;
    mName = paramString1;
    YH = paramLatLng;
    YI = paramString2;
    YJ = new ArrayList(paramList);
    YK = paramString3;
    YL = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAddress()
  {
    return YI;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public String getPhoneNumber()
  {
    return YK;
  }
  
  public LatLng jf()
  {
    return YH;
  }
  
  public List<jt> jg()
  {
    return YJ;
  }
  
  public String jh()
  {
    return YL;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jw.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */