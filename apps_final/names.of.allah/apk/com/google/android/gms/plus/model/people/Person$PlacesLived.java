package com.google.android.gms.plus.model.people;

import com.google.android.gms.common.data.Freezable;

public abstract interface Person$PlacesLived
  extends Freezable<PlacesLived>
{
  public abstract String getValue();
  
  public abstract boolean hasPrimary();
  
  public abstract boolean hasValue();
  
  public abstract boolean isPrimary();
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.model.people.Person.PlacesLived
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */