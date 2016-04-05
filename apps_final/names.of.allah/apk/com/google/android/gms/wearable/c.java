package com.google.android.gms.wearable;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;

public class c
  implements SafeParcelable
{
  public static final Parcelable.Creator<c> CREATOR = new d();
  private final int AQ;
  private final String YI;
  private final int alf;
  private final boolean alg;
  private final String mName;
  final int xJ;
  
  c(int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    xJ = paramInt1;
    mName = paramString1;
    YI = paramString2;
    AQ = paramInt2;
    alf = paramInt3;
    alg = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c)) {}
    do
    {
      return false;
      paramObject = (c)paramObject;
    } while ((!hl.equal(Integer.valueOf(xJ), Integer.valueOf(xJ))) || (!hl.equal(mName, mName)) || (!hl.equal(YI, YI)) || (!hl.equal(Integer.valueOf(AQ), Integer.valueOf(AQ))) || (!hl.equal(Integer.valueOf(alf), Integer.valueOf(alf))) || (!hl.equal(Boolean.valueOf(alg), Boolean.valueOf(alg))));
    return true;
  }
  
  public String getAddress()
  {
    return YI;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public int getRole()
  {
    return alf;
  }
  
  public int getType()
  {
    return AQ;
  }
  
  public int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(xJ), mName, YI, Integer.valueOf(AQ), Integer.valueOf(alf), Boolean.valueOf(alg) });
  }
  
  public boolean isEnabled()
  {
    return alg;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("ConnectionConfiguration[ ");
    localStringBuilder.append("mName=" + mName);
    localStringBuilder.append(", mAddress=" + YI);
    localStringBuilder.append(", mType=" + AQ);
    localStringBuilder.append(", mRole=" + alf);
    localStringBuilder.append(", mEnabled=" + alg);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */