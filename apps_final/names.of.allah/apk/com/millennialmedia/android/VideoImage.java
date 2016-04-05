package com.millennialmedia.android;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.widget.ImageButton;
import android.widget.RelativeLayout.LayoutParams;
import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.json.JSONArray;
import org.json.JSONObject;

class VideoImage
  implements Parcelable, Externalizable
{
  public static final Parcelable.Creator<VideoImage> CREATOR = new VideoImage.1();
  static final long serialVersionUID = 808334584720834205L;
  int anchor;
  int anchor2;
  long appearanceDelay;
  ImageButton button;
  long contentLength;
  String[] eventLoggingUrls;
  long fadeDuration = 1000L;
  float fromAlpha = 1.0F;
  String imageUrl;
  long inactivityTimeout;
  boolean isLeaveBehind;
  RelativeLayout.LayoutParams layoutParams;
  String linkUrl;
  String overlayOrientation;
  int paddingBottom = 0;
  int paddingLeft = 0;
  int paddingRight = 0;
  int paddingTop = 0;
  int position;
  int position2;
  float toAlpha = 1.0F;
  
  public VideoImage() {}
  
  VideoImage(Parcel paramParcel)
  {
    try
    {
      imageUrl = paramParcel.readString();
      contentLength = paramParcel.readLong();
      eventLoggingUrls = new String[paramParcel.readInt()];
      paramParcel.readStringArray(eventLoggingUrls);
      linkUrl = paramParcel.readString();
      overlayOrientation = paramParcel.readString();
      paddingTop = paramParcel.readInt();
      paddingBottom = paramParcel.readInt();
      paddingLeft = paramParcel.readInt();
      paddingRight = paramParcel.readInt();
      position = paramParcel.readInt();
      anchor = paramParcel.readInt();
      position2 = paramParcel.readInt();
      anchor2 = paramParcel.readInt();
      appearanceDelay = paramParcel.readLong();
      inactivityTimeout = paramParcel.readLong();
      fromAlpha = paramParcel.readFloat();
      toAlpha = paramParcel.readFloat();
      fadeDuration = paramParcel.readLong();
      if (paramParcel.readInt() == 1) {}
      for (;;)
      {
        isLeaveBehind = bool;
        return;
        bool = false;
      }
      return;
    }
    catch (Exception paramParcel)
    {
      paramParcel.printStackTrace();
    }
  }
  
  VideoImage(JSONObject paramJSONObject)
  {
    deserializeFromObj(paramJSONObject);
  }
  
  private void deserializeFromObj(JSONObject paramJSONObject)
  {
    int i = 0;
    if (paramJSONObject == null) {
      return;
    }
    imageUrl = paramJSONObject.optString("image", null);
    contentLength = paramJSONObject.optLong("contentLength");
    Object localObject = paramJSONObject.optJSONArray("activity");
    if (localObject != null)
    {
      eventLoggingUrls = new String[((JSONArray)localObject).length()];
      while (i < ((JSONArray)localObject).length())
      {
        eventLoggingUrls[i] = ((JSONArray)localObject).optString(i);
        i += 1;
      }
    }
    eventLoggingUrls = new String[0];
    linkUrl = paramJSONObject.optString("url", null);
    overlayOrientation = paramJSONObject.optString("overlayOrientation", null);
    position = paramJSONObject.optInt("android-layout");
    anchor = paramJSONObject.optInt("android-layoutAnchor");
    position2 = paramJSONObject.optInt("android-layout2");
    anchor2 = paramJSONObject.optInt("android-layoutAnchor2");
    paddingTop = paramJSONObject.optInt("android-paddingTop");
    paddingLeft = paramJSONObject.optInt("android-paddingLeft");
    paddingRight = paramJSONObject.optInt("android-paddingRight");
    paddingBottom = paramJSONObject.optInt("android-paddingBottom");
    appearanceDelay = ((paramJSONObject.optDouble("appearanceDelay", 0.0D) * 1000.0D));
    inactivityTimeout = ((paramJSONObject.optDouble("inactivityTimeout", 0.0D) * 1000.0D));
    localObject = paramJSONObject.optJSONObject("opacity");
    if (localObject != null)
    {
      fromAlpha = ((float)((JSONObject)localObject).optDouble("start", 1.0D));
      toAlpha = ((float)((JSONObject)localObject).optDouble("end", 1.0D));
      fadeDuration = ((((JSONObject)localObject).optDouble("fadeDuration", 1.0D) * 1000.0D));
    }
    isLeaveBehind = paramJSONObject.optBoolean("is_leavebehind");
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  String getImageName()
  {
    if (imageUrl != null)
    {
      Uri localUri = Uri.parse(imageUrl);
      if ((localUri != null) && (localUri.getLastPathSegment() != null)) {
        return localUri.getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat");
      }
    }
    return null;
  }
  
  public void readExternal(ObjectInput paramObjectInput)
  {
    imageUrl = ((String)paramObjectInput.readObject());
    contentLength = paramObjectInput.readLong();
    int j = paramObjectInput.readInt();
    eventLoggingUrls = new String[j];
    int i = 0;
    while (i < j)
    {
      eventLoggingUrls[i] = ((String)paramObjectInput.readObject());
      i += 1;
    }
    linkUrl = ((String)paramObjectInput.readObject());
    overlayOrientation = ((String)paramObjectInput.readObject());
    paddingTop = paramObjectInput.readInt();
    paddingBottom = paramObjectInput.readInt();
    paddingLeft = paramObjectInput.readInt();
    paddingRight = paramObjectInput.readInt();
    position = paramObjectInput.readInt();
    anchor = paramObjectInput.readInt();
    position2 = paramObjectInput.readInt();
    anchor2 = paramObjectInput.readInt();
    appearanceDelay = paramObjectInput.readLong();
    inactivityTimeout = paramObjectInput.readLong();
    fromAlpha = paramObjectInput.readFloat();
    toAlpha = paramObjectInput.readFloat();
    fadeDuration = paramObjectInput.readLong();
    isLeaveBehind = paramObjectInput.readBoolean();
  }
  
  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    paramObjectOutput.writeObject(imageUrl);
    paramObjectOutput.writeLong(contentLength);
    paramObjectOutput.writeInt(eventLoggingUrls.length);
    String[] arrayOfString = eventLoggingUrls;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      paramObjectOutput.writeObject(arrayOfString[i]);
      i += 1;
    }
    paramObjectOutput.writeObject(linkUrl);
    paramObjectOutput.writeObject(overlayOrientation);
    paramObjectOutput.writeInt(paddingTop);
    paramObjectOutput.writeInt(paddingBottom);
    paramObjectOutput.writeInt(paddingLeft);
    paramObjectOutput.writeInt(paddingRight);
    paramObjectOutput.writeInt(position);
    paramObjectOutput.writeInt(anchor);
    paramObjectOutput.writeInt(position2);
    paramObjectOutput.writeInt(anchor2);
    paramObjectOutput.writeLong(appearanceDelay);
    paramObjectOutput.writeLong(inactivityTimeout);
    paramObjectOutput.writeFloat(fromAlpha);
    paramObjectOutput.writeFloat(toAlpha);
    paramObjectOutput.writeLong(fadeDuration);
    paramObjectOutput.writeBoolean(isLeaveBehind);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(imageUrl);
    paramParcel.writeLong(contentLength);
    paramParcel.writeInt(eventLoggingUrls.length);
    paramParcel.writeStringArray(eventLoggingUrls);
    paramParcel.writeString(linkUrl);
    paramParcel.writeString(overlayOrientation);
    paramParcel.writeInt(paddingTop);
    paramParcel.writeInt(paddingBottom);
    paramParcel.writeInt(paddingLeft);
    paramParcel.writeInt(paddingRight);
    paramParcel.writeInt(position);
    paramParcel.writeInt(anchor);
    paramParcel.writeInt(position2);
    paramParcel.writeInt(anchor2);
    paramParcel.writeLong(appearanceDelay);
    paramParcel.writeLong(inactivityTimeout);
    paramParcel.writeFloat(fromAlpha);
    paramParcel.writeFloat(toAlpha);
    paramParcel.writeLong(fadeDuration);
    if (isLeaveBehind) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoImage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */