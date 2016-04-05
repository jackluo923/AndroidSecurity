package com.google.android.gms.wearable;

import com.google.android.gms.common.data.Freezable;

public abstract interface DataEvent
  extends Freezable<DataEvent>
{
  public static final int TYPE_CHANGED = 1;
  public static final int TYPE_DELETED = 2;
  
  public abstract DataItem getDataItem();
  
  public abstract int getType();
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.DataEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */