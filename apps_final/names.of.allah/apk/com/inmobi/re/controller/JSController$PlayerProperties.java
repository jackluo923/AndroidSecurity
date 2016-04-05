package com.inmobi.re.controller;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class JSController$PlayerProperties
  extends JSController.ReflectedParcelable
{
  public static final Parcelable.Creator<PlayerProperties> CREATOR = new b();
  public boolean audioMuted;
  public boolean autoPlay;
  public boolean doLoop;
  public String id;
  public boolean showControl;
  public String startStyle;
  public String stopStyle;
  
  public JSController$PlayerProperties()
  {
    showControl = true;
    autoPlay = true;
    audioMuted = false;
    doLoop = false;
    stopStyle = "normal";
    startStyle = "normal";
    id = "";
  }
  
  public JSController$PlayerProperties(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public boolean doLoop()
  {
    return doLoop;
  }
  
  public boolean doMute()
  {
    return audioMuted;
  }
  
  public boolean exitOnComplete()
  {
    return stopStyle.equalsIgnoreCase("exit");
  }
  
  public boolean isAutoPlay()
  {
    return autoPlay == true;
  }
  
  public boolean isFullScreen()
  {
    return startStyle.equalsIgnoreCase("fullscreen");
  }
  
  public void setFullScreen()
  {
    startStyle = "fullscreen";
  }
  
  public void setProperties(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, String paramString1, String paramString2, String paramString3)
  {
    autoPlay = paramBoolean2;
    showControl = paramBoolean3;
    doLoop = paramBoolean4;
    audioMuted = paramBoolean1;
    startStyle = paramString1;
    stopStyle = paramString2;
    id = paramString3;
  }
  
  public void setStopStyle(String paramString)
  {
    stopStyle = paramString;
  }
  
  public boolean showControl()
  {
    return showControl;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSController.PlayerProperties
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */