package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class CheckResourceIdsExistRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<CheckResourceIdsExistRequest> CREATOR = new d();
  private final List<String> Iq;
  private final int xJ;
  
  CheckResourceIdsExistRequest(int paramInt, List<String> paramList)
  {
    xJ = paramInt;
    Iq = paramList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getVersionCode()
  {
    return xJ;
  }
  
  public List<String> gj()
  {
    return Iq;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.CheckResourceIdsExistRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */