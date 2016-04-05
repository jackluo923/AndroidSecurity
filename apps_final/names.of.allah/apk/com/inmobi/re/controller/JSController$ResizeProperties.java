package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class JSController$ResizeProperties
  extends JSController.ReflectedParcelable
{
  public static final Parcelable.Creator<ResizeProperties> CREATOR = new a();
  public boolean allowOffscreen;
  public String customClosePosition;
  public int height;
  public int offsetX;
  public int offsetY;
  public int width;
  
  public JSController$ResizeProperties()
  {
    initializeResizeProperties();
  }
  
  protected JSController$ResizeProperties(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public void initializeResizeProperties()
  {
    offsetY = 0;
    offsetX = 0;
    height = 0;
    width = 0;
    allowOffscreen = false;
    customClosePosition = "top-right";
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSController.ResizeProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */