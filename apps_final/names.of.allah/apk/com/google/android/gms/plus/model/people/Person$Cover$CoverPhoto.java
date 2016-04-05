package com.google.android.gms.plus.model.people;

import com.google.android.gms.common.data.Freezable;

public abstract interface Person$Cover$CoverPhoto
  extends Freezable<CoverPhoto>
{
  public abstract int getHeight();
  
  public abstract String getUrl();
  
  public abstract int getWidth();
  
  public abstract boolean hasHeight();
  
  public abstract boolean hasUrl();
  
  public abstract boolean hasWidth();
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */