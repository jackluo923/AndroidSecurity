package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class Operator
  implements SafeParcelable
{
  public static final Parcelable.Creator<Operator> CREATOR = new k();
  public static final Operator KX = new Operator("=");
  public static final Operator KY = new Operator("<");
  public static final Operator KZ = new Operator("<=");
  public static final Operator La = new Operator(">");
  public static final Operator Lb = new Operator(">=");
  public static final Operator Lc = new Operator("and");
  public static final Operator Ld = new Operator("or");
  public static final Operator Le = new Operator("not");
  public static final Operator Lf = new Operator("contains");
  final String mTag;
  final int xJ;
  
  Operator(int paramInt, String paramString)
  {
    xJ = paramInt;
    mTag = paramString;
  }
  
  private Operator(String paramString)
  {
    this(1, paramString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (Operator)paramObject;
        if (mTag != null) {
          break;
        }
      } while (mTag == null);
      return false;
    } while (mTag.equals(mTag));
    return false;
  }
  
  public int hashCode()
  {
    if (mTag == null) {}
    for (int i = 0;; i = mTag.hashCode()) {
      return i + 31;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.query.internal.Operator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */