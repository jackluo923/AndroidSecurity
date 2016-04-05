package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.plus.model.moments.ItemScope;
import com.google.android.gms.plus.model.moments.Moment;

public final class ks
  extends d
  implements Moment
{
  private kq adm;
  
  public ks(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  private kq kz()
  {
    try
    {
      if (adm == null)
      {
        byte[] arrayOfByte = getByteArray("momentImpl");
        Parcel localParcel = Parcel.obtain();
        localParcel.unmarshall(arrayOfByte, 0, arrayOfByte.length);
        localParcel.setDataPosition(0);
        adm = kq.CREATOR.bF(localParcel);
        localParcel.recycle();
      }
      return adm;
    }
    finally {}
  }
  
  public final String getId()
  {
    return kz().getId();
  }
  
  public final ItemScope getResult()
  {
    return kz().getResult();
  }
  
  public final String getStartDate()
  {
    return kz().getStartDate();
  }
  
  public final ItemScope getTarget()
  {
    return kz().getTarget();
  }
  
  public final String getType()
  {
    return kz().getType();
  }
  
  public final boolean hasId()
  {
    return kz().hasId();
  }
  
  public final boolean hasResult()
  {
    return kz().hasId();
  }
  
  public final boolean hasStartDate()
  {
    return kz().hasStartDate();
  }
  
  public final boolean hasTarget()
  {
    return kz().hasTarget();
  }
  
  public final boolean hasType()
  {
    return kz().hasType();
  }
  
  public final kq ky()
  {
    return kz();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */