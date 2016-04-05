package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class jp
  implements SafeParcelable
{
  public static final jq CREATOR = new jq();
  private final String Wi;
  private final String mTag;
  final int xJ;
  
  jp(int paramInt, String paramString1, String paramString2)
  {
    xJ = paramInt;
    Wi = paramString1;
    mTag = paramString2;
  }
  
  public int describeContents()
  {
    jq localjq = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof jp)) {}
    do
    {
      return false;
      paramObject = (jp)paramObject;
    } while ((!hl.equal(Wi, Wi)) || (!hl.equal(mTag, mTag)));
    return true;
  }
  
  public String getTag()
  {
    return mTag;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { Wi, mTag });
  }
  
  public String je()
  {
    return Wi;
  }
  
  public String toString()
  {
    return hl.e(this).a("mPlaceId", Wi).a("mTag", mTag).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jq localjq = CREATOR;
    jq.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */