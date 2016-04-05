package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class cf
  implements SafeParcelable
{
  public static final ce CREATOR = new ce();
  public final String mimeType;
  public final String nY;
  public final String nZ;
  public final String oa;
  public final String ob;
  public final String oc;
  public final String packageName;
  public final int versionCode;
  
  public cf(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    versionCode = paramInt;
    nY = paramString1;
    nZ = paramString2;
    mimeType = paramString3;
    packageName = paramString4;
    oa = paramString5;
    ob = paramString6;
    oc = paramString7;
  }
  
  public cf(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this(1, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ce.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */