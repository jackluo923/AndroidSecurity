package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.millennialmedia.google.gson.Gson;
import com.millennialmedia.google.gson.annotations.SerializedName;

class OverlaySettings
  implements Parcelable
{
  public static final Parcelable.Creator<OverlaySettings> CREATOR = new OverlaySettings.1();
  static final String PROPERTIES_ACCELEROMETER = "enableNativeAccelerometer";
  static final String PROPERTIES_ALLOW_ORIENTATION_CHANGE = "allowOrientationChange";
  static final String PROPERTIES_CUSTOM_CLOSE = "useCustomClose";
  static final String PROPERTIES_ENABLE_HARDWARE_ACCEL = "enableHardwareAccel";
  static final String PROPERTIES_FORCE_ORIENTATION = "forceOrientation";
  static final String PROPERTIES_HEIGHT = "height";
  static final String PROPERTIES_MODAL = "modal";
  static final String PROPERTIES_ORIENTATION = "orientation";
  static final String PROPERTIES_TRANSITION = "transition";
  static final String PROPERTIES_TRANSITION_DURATION = "transitionDuration";
  static final String PROPERTIES_TRANSPARENT = "transparent";
  static final String PROPERTIES_WIDTH = "width";
  String adUrl = "";
  boolean allowOrientationChange = true;
  boolean canAccelerate;
  String content = "";
  long creatorAdImplId;
  boolean hasLoadedExpandUrl = false;
  int height;
  boolean isFromInterstitial;
  @SerializedName("transparent")
  private boolean isTransparent;
  HttpMMHeaders mmHeaders;
  boolean modal;
  String orientation = "";
  boolean shouldLaunchToOverlay;
  int shouldResizeOverlay;
  private String transition = "";
  @SerializedName("transitionDuration")
  private long transitionTimeInMillis;
  String urlToLoad = "";
  private boolean useCustomClose;
  int width;
  
  OverlaySettings() {}
  
  OverlaySettings(Parcel paramParcel)
  {
    try
    {
      boolean[] arrayOfBoolean = new boolean[7];
      paramParcel.readBooleanArray(arrayOfBoolean);
      shouldLaunchToOverlay = arrayOfBoolean[0];
      isTransparent = arrayOfBoolean[1];
      canAccelerate = arrayOfBoolean[2];
      useCustomClose = arrayOfBoolean[3];
      modal = arrayOfBoolean[4];
      isFromInterstitial = arrayOfBoolean[5];
      allowOrientationChange = arrayOfBoolean[6];
      shouldResizeOverlay = paramParcel.readInt();
      transition = paramParcel.readString();
      transitionTimeInMillis = paramParcel.readLong();
      if (transitionTimeInMillis < 0L) {}
      for (;;)
      {
        transitionTimeInMillis = l;
        orientation = paramParcel.readString();
        creatorAdImplId = paramParcel.readLong();
        urlToLoad = paramParcel.readString();
        height = paramParcel.readInt();
        width = paramParcel.readInt();
        content = paramParcel.readString();
        adUrl = paramParcel.readString();
        mmHeaders = ((HttpMMHeaders)paramParcel.readParcelable(HttpMMHeaders.class.getClassLoader()));
        return;
        l = transitionTimeInMillis;
      }
      return;
    }
    catch (Exception paramParcel)
    {
      paramParcel.printStackTrace();
    }
  }
  
  static final OverlaySettings createFromJson(String paramString)
  {
    return (OverlaySettings)new Gson().fromJson(paramString, OverlaySettings.class);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  boolean enableHardwareAccel()
  {
    return (mmHeaders != null) && (mmHeaders.enableHardwareAccel);
  }
  
  boolean getIsTransparent()
  {
    return (isTransparent) || ((mmHeaders != null) && (mmHeaders.isTransparent));
  }
  
  String getTransition()
  {
    if (!TextUtils.isEmpty(transition)) {
      return transition;
    }
    if ((mmHeaders != null) && (mmHeaders.transition != null) && (!TextUtils.isEmpty(mmHeaders.transition))) {
      return mmHeaders.transition;
    }
    return "none";
  }
  
  long getTransitionDurationInMillis()
  {
    long l = 0L;
    if (transitionTimeInMillis > 0L) {
      l = transitionTimeInMillis;
    }
    while (mmHeaders == null) {
      return l;
    }
    return mmHeaders.transitionTimeInMillis;
  }
  
  boolean getUseCustomClose()
  {
    return (useCustomClose) || ((mmHeaders != null) && (mmHeaders.useCustomClose));
  }
  
  boolean hasExpandUrl()
  {
    return (urlToLoad != null) && (!urlToLoad.equals(""));
  }
  
  boolean hasLoadedExpandUrl()
  {
    boolean bool = true;
    if (!hasLoadedExpandUrl)
    {
      hasLoadedExpandUrl = true;
      bool = false;
    }
    return bool;
  }
  
  boolean isExpanded()
  {
    return (!isFromInterstitial) && (creatorAdImplId != 0L);
  }
  
  boolean isFromInterstitial()
  {
    return (isFromInterstitial) && (creatorAdImplId != 0L);
  }
  
  void log()
  {
    MMSDK.Log.v(toString());
  }
  
  void setIsTransparent(boolean paramBoolean)
  {
    isTransparent = paramBoolean;
  }
  
  void setTransition(String paramString)
  {
    transition = paramString;
  }
  
  void setTransitionDurationInMillis(long paramLong)
  {
    transitionTimeInMillis = paramLong;
  }
  
  void setUseCustomClose(boolean paramBoolean)
  {
    useCustomClose = paramBoolean;
  }
  
  void setWebMMHeaders(HttpMMHeaders paramHttpMMHeaders)
  {
    mmHeaders = paramHttpMMHeaders;
  }
  
  public String toString()
  {
    return String.format("height %d width %d modal %b urlToLoad %s creatorAdImplId %s shouldResizeOverlay: %d transitionTime: %d overlayTransition: %s shouldAccelerate: %b shouldMakeOverlayTransparent: %b shouldShowCustomClose: %b Orientation: %s", new Object[] { Integer.valueOf(height), Integer.valueOf(width), Boolean.valueOf(modal), urlToLoad, Long.valueOf(creatorAdImplId), Integer.valueOf(shouldResizeOverlay), Long.valueOf(transitionTimeInMillis), transition, Boolean.valueOf(canAccelerate), Boolean.valueOf(isTransparent), Boolean.valueOf(useCustomClose), orientation });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBooleanArray(new boolean[] { shouldLaunchToOverlay, isTransparent, canAccelerate, useCustomClose, modal, isFromInterstitial, allowOrientationChange });
    paramParcel.writeInt(shouldResizeOverlay);
    paramParcel.writeString(transition);
    paramParcel.writeLong(transitionTimeInMillis);
    paramParcel.writeString(orientation);
    paramParcel.writeLong(creatorAdImplId);
    paramParcel.writeString(urlToLoad);
    paramParcel.writeInt(height);
    paramParcel.writeInt(width);
    paramParcel.writeString(content);
    paramParcel.writeString(adUrl);
    paramParcel.writeParcelable(mmHeaders, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.OverlaySettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */