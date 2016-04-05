package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.List;

public final class UserAddressRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<UserAddressRequest> CREATOR = new a();
  List<CountrySpecification> UB;
  private final int xJ;
  
  UserAddressRequest()
  {
    xJ = 1;
  }
  
  UserAddressRequest(int paramInt, List<CountrySpecification> paramList)
  {
    xJ = paramInt;
    UB = paramList;
  }
  
  public static UserAddressRequest.Builder newBuilder()
  {
    UserAddressRequest localUserAddressRequest = new UserAddressRequest();
    localUserAddressRequest.getClass();
    return new UserAddressRequest.Builder(localUserAddressRequest, null);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.identity.intents.UserAddressRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */