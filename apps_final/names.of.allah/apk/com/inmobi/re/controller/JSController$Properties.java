package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class JSController$Properties
  extends JSController.ReflectedParcelable
{
  public static final Parcelable.Creator<Properties> CREATOR = new e();
  public int backgroundColor;
  public float backgroundOpacity;
  public boolean useBackground;
  
  public JSController$Properties()
  {
    useBackground = false;
    backgroundColor = 0;
    backgroundOpacity = 0.0F;
  }
  
  protected JSController$Properties(Parcel paramParcel)
  {
    super(paramParcel);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSController.Properties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */