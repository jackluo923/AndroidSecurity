package com.google.android.gms.location;

public abstract interface Geofence
{
  public static final int GEOFENCE_TRANSITION_DWELL = 4;
  public static final int GEOFENCE_TRANSITION_ENTER = 1;
  public static final int GEOFENCE_TRANSITION_EXIT = 2;
  public static final long NEVER_EXPIRE = -1L;
  
  public abstract String getRequestId();
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.Geofence
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */