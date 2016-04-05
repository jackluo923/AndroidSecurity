package com.google.android.gms.maps.model.internal;

import android.os.IInterface;
import com.google.android.gms.maps.model.LatLng;

public abstract interface b
  extends IInterface
{
  public abstract boolean a(b paramb);
  
  public abstract LatLng getCenter();
  
  public abstract int getFillColor();
  
  public abstract String getId();
  
  public abstract double getRadius();
  
  public abstract int getStrokeColor();
  
  public abstract float getStrokeWidth();
  
  public abstract float getZIndex();
  
  public abstract int hashCodeRemote();
  
  public abstract boolean isVisible();
  
  public abstract void remove();
  
  public abstract void setCenter(LatLng paramLatLng);
  
  public abstract void setFillColor(int paramInt);
  
  public abstract void setRadius(double paramDouble);
  
  public abstract void setStrokeColor(int paramInt);
  
  public abstract void setStrokeWidth(float paramFloat);
  
  public abstract void setVisible(boolean paramBoolean);
  
  public abstract void setZIndex(float paramFloat);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */