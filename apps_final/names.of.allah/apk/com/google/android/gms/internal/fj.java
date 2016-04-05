package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class fj
  implements SafeParcelable
{
  public static final fk CREATOR = new fk();
  final int xJ;
  final String xN;
  final String xO;
  final String xP;
  
  fj(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    xJ = paramInt;
    xN = paramString1;
    xO = paramString2;
    xP = paramString3;
  }
  
  public fj(String paramString1, String paramString2, String paramString3)
  {
    this(1, paramString1, paramString2, paramString3);
  }
  
  public int describeContents()
  {
    fk localfk = CREATOR;
    return 0;
  }
  
  public String toString()
  {
    return String.format("DocumentId[packageName=%s, corpusName=%s, uri=%s]", new Object[] { xN, xO, xP });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fk localfk = CREATOR;
    fk.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */