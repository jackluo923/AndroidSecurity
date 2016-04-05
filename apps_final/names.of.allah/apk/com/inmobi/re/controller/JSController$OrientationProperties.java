package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class JSController$OrientationProperties
  extends JSController.ReflectedParcelable
{
  public static final Parcelable.Creator<OrientationProperties> CREATOR = new g();
  public boolean allowOrientationChange;
  public String forceOrientation;
  
  public JSController$OrientationProperties()
  {
    initializeOrientationProperties();
  }
  
  protected JSController$OrientationProperties(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public void initializeOrientationProperties()
  {
    allowOrientationChange = true;
    forceOrientation = "";
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSController.OrientationProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */