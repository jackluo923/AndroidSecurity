package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class AppVisibleCustomProperties
  implements SafeParcelable, Iterable<CustomProperty>
{
  public static final Parcelable.Creator<AppVisibleCustomProperties> CREATOR = new a();
  public static final AppVisibleCustomProperties JK = new AppVisibleCustomProperties.a().gy();
  final List<CustomProperty> JL;
  final int xJ;
  
  AppVisibleCustomProperties(int paramInt, Collection<CustomProperty> paramCollection)
  {
    xJ = paramInt;
    hn.f(paramCollection);
    JL = new ArrayList(paramCollection);
  }
  
  private AppVisibleCustomProperties(Collection<CustomProperty> paramCollection)
  {
    this(1, paramCollection);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final Iterator<CustomProperty> iterator()
  {
    return JL.iterator();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */