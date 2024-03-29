package com.google.android.gms.analytics.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Command
  implements Parcelable
{
  public static final String APPEND_CACHE_BUSTER = "appendCacheBuster";
  public static final String APPEND_QUEUE_TIME = "appendQueueTime";
  public static final String APPEND_VERSION = "appendVersion";
  public static final Parcelable.Creator<Command> CREATOR = new Command.1();
  private String id;
  private String urlParam;
  private String value;
  
  public Command() {}
  
  Command(Parcel paramParcel)
  {
    readFromParcel(paramParcel);
  }
  
  public Command(String paramString1, String paramString2, String paramString3)
  {
    id = paramString1;
    urlParam = paramString2;
    value = paramString3;
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    id = paramParcel.readString();
    urlParam = paramParcel.readString();
    value = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return id;
  }
  
  public String getUrlParam()
  {
    return urlParam;
  }
  
  public String getValue()
  {
    return value;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(id);
    paramParcel.writeString(urlParam);
    paramParcel.writeString(value);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.Command
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */