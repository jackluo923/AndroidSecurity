package com.google.android.gms.maps;

public abstract interface LocationSource
{
  public abstract void activate(LocationSource.OnLocationChangedListener paramOnLocationChangedListener);
  
  public abstract void deactivate();
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.LocationSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */