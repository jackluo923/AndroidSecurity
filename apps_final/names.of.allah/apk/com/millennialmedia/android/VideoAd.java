package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.Externalizable;
import java.io.File;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class VideoAd
  extends CachedAd
  implements Parcelable, Externalizable
{
  public static final Parcelable.Creator<VideoAd> CREATOR = new VideoAd.3();
  static final String VIDEO_FILE_ID = "video.dat";
  static final long serialVersionUID = 2679125946930815832L;
  ArrayList<VideoLogEvent> activities = new ArrayList();
  ArrayList<VideoImage> buttons = new ArrayList();
  String[] cacheComplete;
  String[] cacheFailed;
  String cacheMissURL;
  DTOCachedVideo cachedVideoDto;
  long closeDelayMillis;
  long contentLength;
  long duration;
  String[] endActivity;
  String endOverlayURL;
  String onCompletionUrl;
  boolean reloadNonEndOverlayOnRestart;
  boolean showControls;
  boolean showCountdown;
  String[] startActivity;
  boolean stayInPlayer;
  boolean usingInternalStorage;
  String[] videoError;
  private String videoFileId;
  String webOverlayURL;
  
  public VideoAd() {}
  
  VideoAd(Parcel paramParcel)
  {
    super(paramParcel);
    try
    {
      startActivity = new String[paramParcel.readInt()];
      paramParcel.readStringArray(startActivity);
      endActivity = new String[paramParcel.readInt()];
      paramParcel.readStringArray(endActivity);
      boolean[] arrayOfBoolean = new boolean[5];
      paramParcel.readBooleanArray(arrayOfBoolean);
      showControls = arrayOfBoolean[0];
      stayInPlayer = arrayOfBoolean[1];
      showCountdown = arrayOfBoolean[2];
      reloadNonEndOverlayOnRestart = arrayOfBoolean[3];
      usingInternalStorage = arrayOfBoolean[4];
      onCompletionUrl = paramParcel.readString();
      webOverlayURL = paramParcel.readString();
      endOverlayURL = paramParcel.readString();
      cacheMissURL = paramParcel.readString();
      videoFileId = paramParcel.readString();
      duration = paramParcel.readLong();
      contentLength = paramParcel.readLong();
      closeDelayMillis = paramParcel.readLong();
      buttons = paramParcel.readArrayList(VideoImage.class.getClassLoader());
      activities = paramParcel.readArrayList(VideoLogEvent.class.getClassLoader());
      cacheComplete = new String[paramParcel.readInt()];
      paramParcel.readStringArray(cacheComplete);
      cacheFailed = new String[paramParcel.readInt()];
      paramParcel.readStringArray(cacheFailed);
      videoError = new String[paramParcel.readInt()];
      paramParcel.readStringArray(videoError);
      return;
    }
    catch (Exception paramParcel)
    {
      paramParcel.printStackTrace();
    }
  }
  
  VideoAd(String paramString)
  {
    if (paramString != null) {}
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString != null)
      {
        paramString = paramString.optJSONObject("video");
        if (paramString != null) {
          deserializeFromObj(paramString);
        }
      }
      return;
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        paramString.printStackTrace();
        paramString = null;
      }
    }
  }
  
  private void deleteVideoFile(Context paramContext)
  {
    if (AdCache.deleteFile(paramContext, videoFileId + "video.dat")) {
      MMSDK.Log.v("VideoAd video file %s was deleted.", new Object[] { videoFileId });
    }
  }
  
  static boolean downloadVideoFile(Context paramContext, String paramString1, String paramString2)
  {
    File localFile = AdCache.getCacheDirectory(paramContext);
    if ((localFile == null) || (!localFile.isDirectory())) {
      return false;
    }
    MMSDK.Log.v("Downloading (" + paramString2 + "video.dat) content to %s", new Object[] { localFile });
    boolean bool = AdCache.downloadComponent(paramString1, paramString2 + "video.dat", localFile, paramContext);
    MMSDK.Log.v("Caching completed successfully (" + paramString2 + "video.dat)? %b", new Object[] { Boolean.valueOf(bool) });
    return bool;
  }
  
  static Uri getVideoUri(Context paramContext, String paramString)
  {
    return Uri.fromFile(AdCache.getDownloadFile(paramContext, paramString + "video.dat"));
  }
  
  private void handleSharedVideoFile(Context paramContext)
  {
    AdCache.iterateCachedAds(paramContext, 2, new VideoAd.1(this, paramContext));
  }
  
  static boolean hasVideoFile(Context paramContext, String paramString)
  {
    return AdCache.hasDownloadFile(paramContext, paramString + "video.dat");
  }
  
  static void playAd(Context paramContext, String paramString, HttpRedirection.RedirectionListenerImpl paramRedirectionListenerImpl)
  {
    if (paramString != null)
    {
      VideoAd localVideoAd = (VideoAd)AdCache.load(paramContext, paramString);
      if ((localVideoAd != null) && (localVideoAd.canShow(paramContext, null, false)))
      {
        paramRedirectionListenerImpl.updateLastVideoViewedTime();
        MMSDK.Log.v("mmvideo: attempting to play video %s", new Object[] { paramString });
        localVideoAd.show(paramContext, creatorAdImplInternalId);
        paramRedirectionListenerImpl.startingVideo();
      }
    }
    else
    {
      return;
    }
    MMSDK.Log.v("mmvideo: Ad %s cannot be shown at this time.", new Object[] { paramString });
  }
  
  boolean canShow(Context paramContext, MMAdImpl paramMMAdImpl, boolean paramBoolean)
  {
    if (paramBoolean) {
      if ((isExpired()) || (!isOnDisk(paramContext)) || (!HandShake.sharedHandShake(paramContext).canDisplayCachedAd(adType, deferredViewStart))) {}
    }
    while ((!isExpired()) && (isOnDisk(paramContext)))
    {
      return true;
      return false;
    }
    return false;
  }
  
  void delete(Context paramContext)
  {
    super.delete(paramContext);
    handleSharedVideoFile(paramContext);
    AdCache.cachedVideoWasRemoved(paramContext, acid);
    MMSDK.Log.v("Ad %s was deleted.", new Object[] { getId() });
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  protected void deserializeFromObj(JSONObject paramJSONObject)
  {
    int j = 0;
    super.deserializeFromObj(paramJSONObject);
    Object localObject1 = paramJSONObject.optJSONArray("startActivity");
    webOverlayURL = paramJSONObject.optString("overlayURL", null);
    endOverlayURL = paramJSONObject.optString("endURL", null);
    cacheMissURL = paramJSONObject.optString("cacheMissURL", null);
    videoFileId = paramJSONObject.optString("videoFileId", null);
    int i;
    if (localObject1 != null)
    {
      startActivity = new String[((JSONArray)localObject1).length()];
      i = 0;
      while (i < ((JSONArray)localObject1).length())
      {
        startActivity[i] = ((JSONArray)localObject1).optString(i);
        i += 1;
      }
    }
    startActivity = new String[0];
    localObject1 = paramJSONObject.optJSONArray("endActivity");
    if (localObject1 != null)
    {
      endActivity = new String[((JSONArray)localObject1).length()];
      i = 0;
      while (i < ((JSONArray)localObject1).length())
      {
        endActivity[i] = ((JSONArray)localObject1).optString(i);
        i += 1;
      }
    }
    endActivity = new String[0];
    localObject1 = paramJSONObject.optJSONArray("cacheComplete");
    if (localObject1 != null)
    {
      cacheComplete = new String[((JSONArray)localObject1).length()];
      i = 0;
      while (i < ((JSONArray)localObject1).length())
      {
        cacheComplete[i] = ((JSONArray)localObject1).optString(i);
        i += 1;
      }
    }
    cacheComplete = new String[0];
    localObject1 = paramJSONObject.optJSONArray("cacheFailed");
    if (localObject1 != null)
    {
      cacheFailed = new String[((JSONArray)localObject1).length()];
      i = 0;
      while (i < ((JSONArray)localObject1).length())
      {
        cacheFailed[i] = ((JSONArray)localObject1).optString(i);
        i += 1;
      }
    }
    cacheFailed = new String[0];
    localObject1 = paramJSONObject.optJSONArray("videoError");
    if (localObject1 != null)
    {
      videoError = new String[((JSONArray)localObject1).length()];
      i = 0;
      while (i < ((JSONArray)localObject1).length())
      {
        videoError[i] = ((JSONArray)localObject1).optString(i);
        i += 1;
      }
    }
    videoError = new String[0];
    showControls = paramJSONObject.optBoolean("showVideoPlayerControls");
    showCountdown = paramJSONObject.optBoolean("showCountdownHUD");
    reloadNonEndOverlayOnRestart = paramJSONObject.optBoolean("reloadOverlayOnRestart");
    localObject1 = paramJSONObject.optJSONObject("onCompletion");
    if (localObject1 != null)
    {
      onCompletionUrl = ((JSONObject)localObject1).optString("url", null);
      stayInPlayer = ((JSONObject)localObject1).optBoolean("stayInPlayer");
    }
    duration = ((paramJSONObject.optDouble("duration", 0.0D) * 1000.0D));
    contentLength = paramJSONObject.optLong("contentLength");
    closeDelayMillis = paramJSONObject.optLong("closeAfterDelay");
    localObject1 = paramJSONObject.optJSONArray("buttons");
    if (localObject1 != null)
    {
      i = 0;
      while (i < ((JSONArray)localObject1).length())
      {
        Object localObject2 = ((JSONArray)localObject1).optJSONObject(i);
        if (localObject2 != null)
        {
          localObject2 = new VideoImage((JSONObject)localObject2);
          buttons.add(localObject2);
        }
        i += 1;
      }
    }
    paramJSONObject = paramJSONObject.optJSONArray("log");
    if (paramJSONObject != null)
    {
      i = j;
      while (i < paramJSONObject.length())
      {
        localObject1 = paramJSONObject.optJSONObject(i);
        if (localObject1 != null)
        {
          localObject1 = new VideoLogEvent((JSONObject)localObject1);
          activities.add(localObject1);
        }
        i += 1;
      }
    }
  }
  
  boolean download(Context paramContext)
  {
    File localFile = AdCache.getCacheDirectory(paramContext);
    if ((localFile == null) || (!localFile.isDirectory())) {
      return false;
    }
    usingInternalStorage = AdCache.isInternalDir(paramContext, localFile);
    MMSDK.Log.v("Downloading content to %s", new Object[] { localFile });
    boolean bool2 = AdCache.downloadComponent(contentUrl, videoFileId + "video.dat", localFile, paramContext);
    boolean bool1 = bool2;
    if (bool2)
    {
      int i = 0;
      bool1 = bool2;
      while (i < buttons.size())
      {
        VideoImage localVideoImage = (VideoImage)buttons.get(i);
        bool1 = AdCache.downloadComponent(imageUrl, getId() + localVideoImage.getImageName(), localFile, paramContext);
        if (!bool1) {
          break;
        }
        i += 1;
      }
    }
    if (!bool1)
    {
      if (downloadAllOrNothing) {
        delete(paramContext);
      }
      HttpGetRequest.log(cacheFailed);
    }
    for (;;)
    {
      MMSDK.Log.v("Caching completed successfully? %b", new Object[] { Boolean.valueOf(bool1) });
      return bool1;
      if (bool1)
      {
        if ((acid != null) && (acid.length() > 0)) {
          AdCache.cachedVideoWasAdded(paramContext, acid);
        }
        HttpGetRequest.log(cacheComplete);
      }
    }
  }
  
  int getType()
  {
    return 1;
  }
  
  String getTypeString()
  {
    return "Video";
  }
  
  Intent getVideoExtrasIntent(Context paramContext, long paramLong)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("videoId", getId());
    if (paramLong != -4L) {
      localIntent.putExtra("internalId", paramLong);
    }
    localIntent.setData(Uri.parse(AdCache.getCacheDirectory(paramContext).getAbsolutePath() + File.separator + videoFileId + "video.dat"));
    return localIntent;
  }
  
  boolean hasEndCard()
  {
    Iterator localIterator = buttons.iterator();
    while (localIterator.hasNext()) {
      if (nextisLeaveBehind) {
        return true;
      }
    }
    return false;
  }
  
  boolean isOnDisk(Context paramContext)
  {
    paramContext = AdCache.getCacheDirectory(paramContext);
    if ((paramContext != null) && (paramContext.exists()))
    {
      Object localObject = paramContext.list(new VideoAd.2(this));
      if ((localObject != null) && (localObject.length >= buttons.size() + 1)) {}
      for (boolean bool = true;; bool = false)
      {
        if (bool)
        {
          if (!new File(paramContext, videoFileId + "video.dat").exists()) {
            return false;
          }
          localObject = buttons.iterator();
          while (((Iterator)localObject).hasNext())
          {
            VideoImage localVideoImage = (VideoImage)((Iterator)localObject).next();
            if (!new File(paramContext, getId() + localVideoImage.getImageName()).exists()) {
              return false;
            }
          }
        }
        return bool;
      }
    }
    return false;
  }
  
  void logBeginEvent()
  {
    if (startActivity != null)
    {
      MMSDK.Log.d("Cached video begin event logged");
      int i = 0;
      while (i < startActivity.length)
      {
        MMSDK.Event.logEvent(startActivity[i]);
        i += 1;
      }
    }
  }
  
  void logEndEvent()
  {
    if (endActivity != null)
    {
      MMSDK.Log.d("Cached video end event logged");
      int i = 0;
      while (i < endActivity.length)
      {
        MMSDK.Event.logEvent(endActivity[i]);
        i += 1;
      }
    }
  }
  
  public void readExternal(ObjectInput paramObjectInput)
  {
    int j = 0;
    super.readExternal(paramObjectInput);
    showControls = paramObjectInput.readBoolean();
    onCompletionUrl = ((String)paramObjectInput.readObject());
    webOverlayURL = ((String)paramObjectInput.readObject());
    endOverlayURL = ((String)paramObjectInput.readObject());
    cacheMissURL = ((String)paramObjectInput.readObject());
    videoFileId = ((String)paramObjectInput.readObject());
    stayInPlayer = paramObjectInput.readBoolean();
    showCountdown = paramObjectInput.readBoolean();
    reloadNonEndOverlayOnRestart = paramObjectInput.readBoolean();
    int k = paramObjectInput.readInt();
    startActivity = new String[k];
    int i = 0;
    while (i < k)
    {
      startActivity[i] = ((String)paramObjectInput.readObject());
      i += 1;
    }
    k = paramObjectInput.readInt();
    endActivity = new String[k];
    i = 0;
    while (i < k)
    {
      endActivity[i] = ((String)paramObjectInput.readObject());
      i += 1;
    }
    duration = paramObjectInput.readLong();
    usingInternalStorage = paramObjectInput.readBoolean();
    contentLength = paramObjectInput.readLong();
    closeDelayMillis = paramObjectInput.readLong();
    k = paramObjectInput.readInt();
    cacheComplete = new String[k];
    i = 0;
    while (i < k)
    {
      cacheComplete[i] = ((String)paramObjectInput.readObject());
      i += 1;
    }
    k = paramObjectInput.readInt();
    cacheFailed = new String[k];
    i = 0;
    while (i < k)
    {
      cacheFailed[i] = ((String)paramObjectInput.readObject());
      i += 1;
    }
    k = paramObjectInput.readInt();
    videoError = new String[k];
    i = 0;
    while (i < k)
    {
      videoError[i] = ((String)paramObjectInput.readObject());
      i += 1;
    }
    buttons.clear();
    k = paramObjectInput.readInt();
    i = 0;
    Object localObject;
    while (i < k)
    {
      localObject = (VideoImage)paramObjectInput.readObject();
      buttons.add(localObject);
      i += 1;
    }
    activities.clear();
    k = paramObjectInput.readInt();
    i = j;
    while (i < k)
    {
      localObject = (VideoLogEvent)paramObjectInput.readObject();
      activities.add(localObject);
      i += 1;
    }
  }
  
  boolean saveAssets(Context paramContext)
  {
    return true;
  }
  
  void setDtoCachedVideo(DTOCachedVideo paramDTOCachedVideo)
  {
    cachedVideoDto = paramDTOCachedVideo;
  }
  
  void show(Context paramContext, long paramLong)
  {
    Utils.IntentUtils.startCachedVideoPlayerActivity(paramContext, getVideoExtrasIntent(paramContext, paramLong));
  }
  
  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    int j = 0;
    super.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(showControls);
    paramObjectOutput.writeObject(onCompletionUrl);
    paramObjectOutput.writeObject(webOverlayURL);
    paramObjectOutput.writeObject(endOverlayURL);
    paramObjectOutput.writeObject(cacheMissURL);
    paramObjectOutput.writeObject(videoFileId);
    paramObjectOutput.writeBoolean(stayInPlayer);
    paramObjectOutput.writeBoolean(showCountdown);
    paramObjectOutput.writeBoolean(reloadNonEndOverlayOnRestart);
    paramObjectOutput.writeInt(startActivity.length);
    Object localObject = startActivity;
    int k = localObject.length;
    int i = 0;
    while (i < k)
    {
      paramObjectOutput.writeObject(localObject[i]);
      i += 1;
    }
    paramObjectOutput.writeInt(endActivity.length);
    localObject = endActivity;
    k = localObject.length;
    i = 0;
    while (i < k)
    {
      paramObjectOutput.writeObject(localObject[i]);
      i += 1;
    }
    paramObjectOutput.writeLong(duration);
    paramObjectOutput.writeBoolean(usingInternalStorage);
    paramObjectOutput.writeLong(contentLength);
    paramObjectOutput.writeLong(closeDelayMillis);
    paramObjectOutput.writeInt(cacheComplete.length);
    localObject = cacheComplete;
    k = localObject.length;
    i = 0;
    while (i < k)
    {
      paramObjectOutput.writeObject(localObject[i]);
      i += 1;
    }
    paramObjectOutput.writeInt(cacheFailed.length);
    localObject = cacheFailed;
    k = localObject.length;
    i = 0;
    while (i < k)
    {
      paramObjectOutput.writeObject(localObject[i]);
      i += 1;
    }
    paramObjectOutput.writeInt(videoError.length);
    localObject = videoError;
    k = localObject.length;
    i = j;
    while (i < k)
    {
      paramObjectOutput.writeObject(localObject[i]);
      i += 1;
    }
    paramObjectOutput.writeInt(buttons.size());
    localObject = buttons.iterator();
    while (((Iterator)localObject).hasNext()) {
      paramObjectOutput.writeObject((VideoImage)((Iterator)localObject).next());
    }
    paramObjectOutput.writeInt(activities.size());
    localObject = activities.iterator();
    while (((Iterator)localObject).hasNext()) {
      paramObjectOutput.writeObject((VideoLogEvent)((Iterator)localObject).next());
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(startActivity.length);
    paramParcel.writeStringArray(startActivity);
    paramParcel.writeInt(endActivity.length);
    paramParcel.writeStringArray(endActivity);
    paramParcel.writeBooleanArray(new boolean[] { showControls, stayInPlayer, showCountdown, reloadNonEndOverlayOnRestart, usingInternalStorage });
    paramParcel.writeString(onCompletionUrl);
    paramParcel.writeString(endOverlayURL);
    paramParcel.writeString(webOverlayURL);
    paramParcel.writeString(cacheMissURL);
    paramParcel.writeString(videoFileId);
    paramParcel.writeLong(duration);
    paramParcel.writeLong(contentLength);
    paramParcel.writeLong(closeDelayMillis);
    paramParcel.writeList(buttons);
    paramParcel.writeList(activities);
    paramParcel.writeInt(cacheComplete.length);
    paramParcel.writeStringArray(cacheComplete);
    paramParcel.writeInt(cacheFailed.length);
    paramParcel.writeStringArray(cacheFailed);
    paramParcel.writeInt(videoError.length);
    paramParcel.writeStringArray(videoError);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */