package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.a;
import com.google.android.gms.location.b;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.List;

public abstract interface jf
  extends IInterface
{
  public abstract void a(long paramLong, boolean paramBoolean, PendingIntent paramPendingIntent);
  
  public abstract void a(PendingIntent paramPendingIntent);
  
  public abstract void a(PendingIntent paramPendingIntent, je paramje, String paramString);
  
  public abstract void a(Location paramLocation, int paramInt);
  
  public abstract void a(je paramje, String paramString);
  
  public abstract void a(jl paramjl, kb paramkb, PendingIntent paramPendingIntent);
  
  public abstract void a(jn paramjn, kb paramkb, jz paramjz);
  
  public abstract void a(jp paramjp, kb paramkb);
  
  public abstract void a(jr paramjr, kb paramkb, PendingIntent paramPendingIntent);
  
  public abstract void a(jv paramjv, kb paramkb, jz paramjz);
  
  public abstract void a(kb paramkb, PendingIntent paramPendingIntent);
  
  public abstract void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent);
  
  public abstract void a(LocationRequest paramLocationRequest, a parama);
  
  public abstract void a(LocationRequest paramLocationRequest, a parama, String paramString);
  
  public abstract void a(a parama);
  
  public abstract void a(LatLng paramLatLng, jn paramjn, kb paramkb, jz paramjz);
  
  public abstract void a(LatLngBounds paramLatLngBounds, int paramInt, jn paramjn, kb paramkb, jz paramjz);
  
  public abstract void a(LatLngBounds paramLatLngBounds, int paramInt, String paramString, jn paramjn, kb paramkb, jz paramjz);
  
  public abstract void a(String paramString, kb paramkb, jz paramjz);
  
  public abstract void a(String paramString, LatLngBounds paramLatLngBounds, jn paramjn, kb paramkb, jz paramjz);
  
  public abstract void a(String paramString, List<String> paramList, List<jx> paramList1, kb paramkb, jz paramjz);
  
  public abstract void a(List<ji> paramList, PendingIntent paramPendingIntent, je paramje, String paramString);
  
  public abstract void a(String[] paramArrayOfString, je paramje, String paramString);
  
  public abstract void b(kb paramkb, PendingIntent paramPendingIntent);
  
  public abstract void b(String paramString, kb paramkb, jz paramjz);
  
  public abstract Location bo(String paramString);
  
  public abstract b bp(String paramString);
  
  public abstract Location iR();
  
  public abstract IBinder iS();
  
  public abstract void removeActivityUpdates(PendingIntent paramPendingIntent);
  
  public abstract void setMockLocation(Location paramLocation);
  
  public abstract void setMockMode(boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */