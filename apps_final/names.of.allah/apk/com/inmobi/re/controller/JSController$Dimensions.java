package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class JSController$Dimensions
  extends JSController.ReflectedParcelable
{
  public static final Parcelable.Creator<Dimensions> CREATOR = new c();
  public int height;
  public int width;
  public int x;
  public int y;
  
  public JSController$Dimensions()
  {
    x = -1;
    y = -1;
    width = -1;
    height = -1;
  }
  
  protected JSController$Dimensions(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public String toString()
  {
    return "x: " + x + ", y: " + y + ", width: " + width + ", height: " + height;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSController.Dimensions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */