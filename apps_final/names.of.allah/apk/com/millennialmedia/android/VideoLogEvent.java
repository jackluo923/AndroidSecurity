package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.json.JSONArray;
import org.json.JSONObject;

class VideoLogEvent
  implements Parcelable, Externalizable
{
  public static final Parcelable.Creator<VideoLogEvent> CREATOR = new VideoLogEvent.1();
  static final long serialVersionUID = 795553873017368584L;
  String[] activities;
  long position;
  
  public VideoLogEvent() {}
  
  VideoLogEvent(Parcel paramParcel)
  {
    try
    {
      position = paramParcel.readLong();
      activities = new String[paramParcel.readInt()];
      paramParcel.readStringArray(activities);
      return;
    }
    catch (Exception paramParcel)
    {
      paramParcel.printStackTrace();
    }
  }
  
  VideoLogEvent(JSONObject paramJSONObject)
  {
    deserializeFromObj(paramJSONObject);
  }
  
  private void deserializeFromObj(JSONObject paramJSONObject)
  {
    int i = 0;
    if (paramJSONObject == null) {}
    for (;;)
    {
      return;
      position = (paramJSONObject.optInt("time") * 1000);
      paramJSONObject = paramJSONObject.optJSONArray("urls");
      if (paramJSONObject == null) {
        break;
      }
      activities = new String[paramJSONObject.length()];
      while (i < paramJSONObject.length())
      {
        activities[i] = paramJSONObject.optString(i);
        i += 1;
      }
    }
    activities = new String[0];
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void readExternal(ObjectInput paramObjectInput)
  {
    position = paramObjectInput.readLong();
    int j = paramObjectInput.readInt();
    activities = new String[j];
    int i = 0;
    while (i < j)
    {
      activities[i] = ((String)paramObjectInput.readObject());
      i += 1;
    }
  }
  
  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    paramObjectOutput.writeLong(position);
    paramObjectOutput.writeInt(activities.length);
    String[] arrayOfString = activities;
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      paramObjectOutput.writeObject(arrayOfString[i]);
      i += 1;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(position);
    paramParcel.writeInt(activities.length);
    paramParcel.writeStringArray(activities);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoLogEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */