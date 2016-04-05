package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.Node;

public class ai
  implements SafeParcelable, Node
{
  public static final Parcelable.Creator<ai> CREATOR = new aj();
  private final String Lk;
  private final String xD;
  final int xJ;
  
  ai(int paramInt, String paramString1, String paramString2)
  {
    xJ = paramInt;
    xD = paramString1;
    Lk = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ai)) {}
    do
    {
      return false;
      paramObject = (ai)paramObject;
    } while ((!xD.equals(xD)) || (!Lk.equals(Lk)));
    return true;
  }
  
  public String getDisplayName()
  {
    return Lk;
  }
  
  public String getId()
  {
    return xD;
  }
  
  public int hashCode()
  {
    return (xD.hashCode() + 629) * 37 + Lk.hashCode();
  }
  
  public String toString()
  {
    return "NodeParcelable{" + xD + "," + Lk + "}";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    aj.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */