package com.google.android.gms.plus.model.people;

import android.os.Bundle;
import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.e;
import com.google.android.gms.internal.kt;
import com.google.android.gms.internal.le;

public final class PersonBuffer
  extends DataBuffer<Person>
{
  private final e<kt> adW;
  
  public PersonBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    if ((paramDataHolder.eP() != null) && (paramDataHolder.eP().getBoolean("com.google.android.gms.plus.IsSafeParcelable", false)))
    {
      adW = new e(paramDataHolder, kt.CREATOR);
      return;
    }
    adW = null;
  }
  
  public final Person get(int paramInt)
  {
    if (adW != null) {
      return (Person)adW.ad(paramInt);
    }
    return new le(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.model.people.PersonBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */