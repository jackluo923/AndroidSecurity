package com.google.android.gms.plus.model.people;

import com.google.android.gms.common.data.Freezable;

public abstract interface Person$AgeRange
  extends Freezable<AgeRange>
{
  public abstract int getMax();
  
  public abstract int getMin();
  
  public abstract boolean hasMax();
  
  public abstract boolean hasMin();
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.model.people.Person.AgeRange
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */