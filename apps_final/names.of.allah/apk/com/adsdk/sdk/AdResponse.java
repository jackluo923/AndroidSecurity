package com.adsdk.sdk;

import com.adsdk.sdk.customevents.CustomEvent;
import com.adsdk.sdk.data.ClickType;
import com.adsdk.sdk.video.VideoData;
import java.util.List;

public class AdResponse
  implements Ad
{
  public static final String OTHER = "other";
  public static final String WEB = "web";
  private static final long serialVersionUID = 3271938798582141269L;
  private int bannerHeight;
  private int bannerWidth;
  private ClickType clickType;
  private String clickUrl;
  private List<CustomEvent> customEvents;
  private boolean horizontalOrientationRequested;
  private String imageUrl;
  private int refresh;
  private boolean scale;
  private int skipOverlay = 0;
  private boolean skipPreflight;
  private String text;
  private long timestamp;
  private int type;
  private String urlType;
  private VideoData videoData;
  
  public int getBannerHeight()
  {
    return bannerHeight;
  }
  
  public int getBannerWidth()
  {
    return bannerWidth;
  }
  
  public ClickType getClickType()
  {
    return clickType;
  }
  
  public String getClickUrl()
  {
    return clickUrl;
  }
  
  public List<CustomEvent> getCustomEvents()
  {
    return customEvents;
  }
  
  public String getImageUrl()
  {
    return imageUrl;
  }
  
  public int getRefresh()
  {
    return refresh;
  }
  
  public int getSkipOverlay()
  {
    return skipOverlay;
  }
  
  public String getText()
  {
    return text;
  }
  
  public long getTimestamp()
  {
    return timestamp;
  }
  
  public int getType()
  {
    return type;
  }
  
  public String getUrlType()
  {
    return urlType;
  }
  
  public VideoData getVideoData()
  {
    return videoData;
  }
  
  public boolean isHorizontalOrientationRequested()
  {
    return horizontalOrientationRequested;
  }
  
  public boolean isScale()
  {
    return scale;
  }
  
  public boolean isSkipPreflight()
  {
    return skipPreflight;
  }
  
  public void setBannerHeight(int paramInt)
  {
    bannerHeight = paramInt;
  }
  
  public void setBannerWidth(int paramInt)
  {
    bannerWidth = paramInt;
  }
  
  public void setClickType(ClickType paramClickType)
  {
    clickType = paramClickType;
  }
  
  public void setClickUrl(String paramString)
  {
    clickUrl = paramString;
  }
  
  public void setCustomEvents(List<CustomEvent> paramList)
  {
    customEvents = paramList;
  }
  
  public void setHorizontalOrientationRequested(boolean paramBoolean)
  {
    horizontalOrientationRequested = paramBoolean;
  }
  
  public void setImageUrl(String paramString)
  {
    imageUrl = paramString;
  }
  
  public void setRefresh(int paramInt)
  {
    refresh = paramInt;
  }
  
  public void setScale(boolean paramBoolean)
  {
    scale = paramBoolean;
  }
  
  public void setSkipOverlay(int paramInt)
  {
    skipOverlay = paramInt;
  }
  
  public void setSkipPreflight(boolean paramBoolean)
  {
    skipPreflight = paramBoolean;
  }
  
  public void setText(String paramString)
  {
    text = paramString;
  }
  
  public void setTimestamp(long paramLong)
  {
    timestamp = paramLong;
  }
  
  public void setType(int paramInt)
  {
    type = paramInt;
  }
  
  public void setUrlType(String paramString)
  {
    urlType = paramString;
  }
  
  public void setVideoData(VideoData paramVideoData)
  {
    videoData = paramVideoData;
  }
  
  public String toString()
  {
    return "Response [refresh=" + refresh + ", type=" + type + ", bannerWidth=" + bannerWidth + ", bannerHeight=" + bannerHeight + ", text=" + text + ", imageUrl=" + imageUrl + ", clickType=" + clickType + ", clickUrl=" + clickUrl + ", urlType=" + urlType + ", scale=" + scale + ", skipPreflight=" + skipPreflight + "]";
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.AdResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */