package com.google.android.gms.plus.model.people;

import com.google.android.gms.common.data.Freezable;

public abstract interface Person$Urls
  extends Freezable<Urls>
{
  public abstract String getLabel();
  
  public abstract int getType();
  
  public abstract String getValue();
  
  public abstract boolean hasLabel();
  
  public abstract boolean hasType();
  
  public abstract boolean hasValue();
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.model.people.Person.Urls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */