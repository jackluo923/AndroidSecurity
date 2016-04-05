package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.concurrent.TimeUnit;

public final class jr
  implements SafeParcelable
{
  public static final js CREATOR = new js();
  static final long Wj = TimeUnit.HOURS.toMillis(1L);
  private final long Vi;
  private final jn Wk;
  private final int mPriority;
  final int xJ;
  
  public jr(int paramInt1, jn paramjn, long paramLong, int paramInt2)
  {
    xJ = paramInt1;
    Wk = paramjn;
    Vi = paramLong;
    mPriority = paramInt2;
  }
  
  public final int describeContents()
  {
    js localjs = CREATOR;
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof jr)) {
        return false;
      }
      paramObject = (jr)paramObject;
    } while ((hl.equal(Wk, Wk)) && (Vi == Vi) && (mPriority == mPriority));
    return false;
  }
  
  public final long getInterval()
  {
    return Vi;
  }
  
  public final int getPriority()
  {
    return mPriority;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Wk, Long.valueOf(Vi), Integer.valueOf(mPriority) });
  }
  
  public final jn ja()
  {
    return Wk;
  }
  
  public final String toString()
  {
    return hl.e(this).a("filter", Wk).a("interval", Long.valueOf(Vi)).a("priority", Integer.valueOf(mPriority)).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    js localjs = CREATOR;
    js.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */