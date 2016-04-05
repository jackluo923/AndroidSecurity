package com.google.android.gms.maps.model.internal;

import android.os.IInterface;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public abstract interface c
  extends IInterface
{
  public abstract void a(float paramFloat1, float paramFloat2);
  
  public abstract boolean a(c paramc);
  
  public abstract float getBearing();
  
  public abstract LatLngBounds getBounds();
  
  public abstract float getHeight();
  
  public abstract String getId();
  
  public abstract LatLng getPosition();
  
  public abstract float getTransparency();
  
  public abstract float getWidth();
  
  public abstract float getZIndex();
  
  public abstract int hashCodeRemote();
  
  public abstract boolean isVisible();
  
  public abstract void l(d paramd);
  
  public abstract void remove();
  
  public abstract void setBearing(float paramFloat);
  
  public abstract void setDimensions(float paramFloat);
  
  public abstract void setPosition(LatLng paramLatLng);
  
  public abstract void setPositionFromBounds(LatLngBounds paramLatLngBounds);
  
  public abstract void setTransparency(float paramFloat);
  
  public abstract void setVisible(boolean paramBoolean);
  
  public abstract void setZIndex(float paramFloat);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */