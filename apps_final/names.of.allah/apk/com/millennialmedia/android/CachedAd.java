package com.millennialmedia.android;

import android.content.Context;
import android.os.Parcel;
import java.io.Externalizable;
import java.io.File;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

abstract class CachedAd
  implements Externalizable
{
  static final int INTERSTITIAL = 2;
  static final int NATIVE = 3;
  static final int VIDEO = 1;
  static final long serialVersionUID = 316862728709355974L;
  String acid;
  String contentUrl;
  long deferredViewStart;
  boolean downloadAllOrNothing = false;
  int downloadPriority;
  Date expiration;
  private String id;
  
  CachedAd()
  {
    deferredViewStart = System.currentTimeMillis();
  }
  
  protected CachedAd(Parcel paramParcel)
  {
    try
    {
      id = paramParcel.readString();
      acid = paramParcel.readString();
      expiration = ((Date)paramParcel.readSerializable());
      deferredViewStart = paramParcel.readLong();
      boolean[] arrayOfBoolean = new boolean[1];
      paramParcel.readBooleanArray(arrayOfBoolean);
      downloadAllOrNothing = arrayOfBoolean[0];
      contentUrl = paramParcel.readString();
      downloadPriority = paramParcel.readInt();
      return;
    }
    catch (Exception paramParcel)
    {
      paramParcel.printStackTrace();
    }
  }
  
  static CachedAd parseJSON(String paramString)
  {
    int i;
    int j;
    int k;
    if (MMSDK.logLevel >= 5)
    {
      MMSDK.Log.v("Received cached ad.");
      int m = paramString.length();
      if (m <= 1000) {
        break label91;
      }
      i = 999;
      j = 0;
      if (i >= m) {
        break label109;
      }
      MMSDK.Log.v(paramString.substring(j, i));
      j = i + 1000;
      if (j <= m) {
        break label100;
      }
      k = m - 1;
      j = i;
    }
    for (;;)
    {
      MMSDK.Log.v(paramString.substring(j, k));
      while (paramString.length() > 0)
      {
        return new VideoAd(paramString);
        label91:
        MMSDK.Log.v(paramString);
      }
      return null;
      label100:
      k = i;
      i = j;
      j = k;
      break;
      label109:
      k = i;
    }
  }
  
  abstract boolean canShow(Context paramContext, MMAdImpl paramMMAdImpl, boolean paramBoolean);
  
  void delete(Context paramContext)
  {
    int i = 0;
    paramContext = AdCache.getCacheDirectory(paramContext);
    if ((paramContext != null) && (paramContext.isDirectory())) {
      try
      {
        paramContext = paramContext.listFiles(new CachedAd.1(this));
        MMSDK.Log.v("Deleting %d files for %s.", new Object[] { Integer.valueOf(paramContext.length), id });
        while (i < paramContext.length)
        {
          paramContext[i].delete();
          i += 1;
        }
        return;
      }
      catch (Exception paramContext)
      {
        MMSDK.Log.v(paramContext);
      }
    }
  }
  
  protected void deserializeFromObj(JSONObject paramJSONObject)
  {
    id = paramJSONObject.optString("id", null);
    acid = paramJSONObject.optString("vid", null);
    contentUrl = paramJSONObject.optString("content-url", null);
    paramJSONObject = paramJSONObject.optString("expiration", null);
    SimpleDateFormat localSimpleDateFormat;
    if (paramJSONObject != null) {
      localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ZZZZ");
    }
    try
    {
      expiration = localSimpleDateFormat.parse(paramJSONObject);
      return;
    }
    catch (ParseException paramJSONObject)
    {
      MMSDK.Log.e(paramJSONObject);
    }
  }
  
  abstract boolean download(Context paramContext);
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof CachedAd)) {
      return false;
    }
    paramObject = (CachedAd)paramObject;
    return id.equals(id);
  }
  
  String getId()
  {
    return id;
  }
  
  abstract int getType();
  
  abstract String getTypeString();
  
  boolean isExpired()
  {
    return (expiration != null) && (expiration.getTime() <= System.currentTimeMillis());
  }
  
  abstract boolean isOnDisk(Context paramContext);
  
  boolean isValid()
  {
    return (id != null) && (id.length() > 0) && (contentUrl != null) && (contentUrl.length() > 0);
  }
  
  public void readExternal(ObjectInput paramObjectInput)
  {
    id = ((String)paramObjectInput.readObject());
    acid = ((String)paramObjectInput.readObject());
    expiration = ((Date)paramObjectInput.readObject());
    deferredViewStart = paramObjectInput.readLong();
    contentUrl = ((String)paramObjectInput.readObject());
  }
  
  abstract boolean saveAssets(Context paramContext);
  
  void setId(String paramString)
  {
    id = paramString;
  }
  
  abstract void show(Context paramContext, long paramLong);
  
  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    paramObjectOutput.writeObject(id);
    paramObjectOutput.writeObject(acid);
    paramObjectOutput.writeObject(expiration);
    paramObjectOutput.writeLong(deferredViewStart);
    paramObjectOutput.writeObject(contentUrl);
  }
  
  protected void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(id);
    paramParcel.writeString(acid);
    paramParcel.writeSerializable(expiration);
    paramParcel.writeLong(deferredViewStart);
    paramParcel.writeBooleanArray(new boolean[] { downloadAllOrNothing });
    paramParcel.writeString(contentUrl);
    paramParcel.writeInt(downloadPriority);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.CachedAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */