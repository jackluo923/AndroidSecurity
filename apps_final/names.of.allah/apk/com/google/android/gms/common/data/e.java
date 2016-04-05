package com.google.android.gms.common.data;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class e<T extends SafeParcelable>
  extends DataBuffer<T>
{
  private static final String[] EB = { "data" };
  private final Parcelable.Creator<T> EC;
  
  public e(DataHolder paramDataHolder, Parcelable.Creator<T> paramCreator)
  {
    super(paramDataHolder);
    EC = paramCreator;
  }
  
  public T ad(int paramInt)
  {
    Object localObject = DD.f("data", paramInt, 0);
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall((byte[])localObject, 0, localObject.length);
    localParcel.setDataPosition(0);
    localObject = (SafeParcelable)EC.createFromParcel(localParcel);
    localParcel.recycle();
    return (T)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */