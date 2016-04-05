package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class jx
  implements SafeParcelable
{
  public static final jy CREATOR = new jy();
  public static final jx YM = w("test_type", 1);
  public static final jx YN = w("saved_offers", 4);
  public static final Set<jx> YO = Collections.unmodifiableSet(new HashSet(Arrays.asList(new jx[] { YM, YN })));
  final int YP;
  final String qU;
  final int xJ;
  
  jx(int paramInt1, String paramString, int paramInt2)
  {
    hn.aE(paramString);
    xJ = paramInt1;
    qU = paramString;
    YP = paramInt2;
  }
  
  private static jx w(String paramString, int paramInt)
  {
    return new jx(0, paramString, paramInt);
  }
  
  public final int describeContents()
  {
    jy localjy = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof jx)) {
        return false;
      }
      paramObject = (jx)paramObject;
    } while ((qU.equals(qU)) && (YP == YP));
    return false;
  }
  
  public final int hashCode()
  {
    return qU.hashCode();
  }
  
  public final String toString()
  {
    return qU;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jy localjy = CREATOR;
    jy.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */