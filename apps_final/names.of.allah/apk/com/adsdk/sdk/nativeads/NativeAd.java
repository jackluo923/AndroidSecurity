package com.adsdk.sdk.nativeads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class NativeAd
{
  private String clickUrl;
  private Map<String, NativeAd.ImageAsset> imageAssets = new HashMap();
  private Map<String, String> textAssets = new HashMap();
  private List<NativeAd.Tracker> trackers = new ArrayList();
  
  public void addImageAsset(String paramString, NativeAd.ImageAsset paramImageAsset)
  {
    imageAssets.put(paramString, paramImageAsset);
  }
  
  public void addTextAsset(String paramString1, String paramString2)
  {
    textAssets.put(paramString1, paramString2);
  }
  
  public String getClickUrl()
  {
    return clickUrl;
  }
  
  public NativeAd.ImageAsset getImageAsset(String paramString)
  {
    return (NativeAd.ImageAsset)imageAssets.get(paramString);
  }
  
  public String getTextAsset(String paramString)
  {
    return (String)textAssets.get(paramString);
  }
  
  public List<NativeAd.Tracker> getTrackers()
  {
    return trackers;
  }
  
  public void setClickUrl(String paramString)
  {
    clickUrl = paramString;
  }
  
  public void setTrackers(List<NativeAd.Tracker> paramList)
  {
    trackers = paramList;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.NativeAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */