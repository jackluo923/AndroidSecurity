package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class JSController$ExpandProperties
  extends JSController.ReflectedParcelable
{
  public static final Parcelable.Creator<ExpandProperties> CREATOR = new f();
  public int actualHeightRequested;
  public int actualWidthRequested;
  public int bottomStuff;
  public int currentX;
  public int currentY;
  public int height;
  public boolean isModal;
  public boolean lockOrientation;
  public String orientation;
  public int portraitHeightRequested;
  public int portraitWidthRequested;
  public String rotationAtExpand;
  public int topStuff;
  public boolean useCustomClose;
  public int width;
  public int x;
  public int y;
  public boolean zeroWidthHeight;
  
  public JSController$ExpandProperties()
  {
    reinitializeExpandProperties();
  }
  
  protected JSController$ExpandProperties(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public void reinitializeExpandProperties()
  {
    width = 0;
    height = 0;
    x = -1;
    y = -1;
    useCustomClose = false;
    isModal = true;
    lockOrientation = false;
    orientation = "";
    actualWidthRequested = 0;
    actualHeightRequested = 0;
    topStuff = 0;
    bottomStuff = 0;
    portraitWidthRequested = 0;
    portraitHeightRequested = 0;
    zeroWidthHeight = false;
    rotationAtExpand = "";
    currentX = 0;
    currentY = 0;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSController.ExpandProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */