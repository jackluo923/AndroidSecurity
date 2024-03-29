package com.google.android.gms.plus.model.moments;

import com.google.android.gms.common.data.Freezable;

public abstract interface Moment
  extends Freezable<Moment>
{
  public abstract String getId();
  
  public abstract ItemScope getResult();
  
  public abstract String getStartDate();
  
  public abstract ItemScope getTarget();
  
  public abstract String getType();
  
  public abstract boolean hasId();
  
  public abstract boolean hasResult();
  
  public abstract boolean hasStartDate();
  
  public abstract boolean hasTarget();
  
  public abstract boolean hasType();
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.model.moments.Moment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */