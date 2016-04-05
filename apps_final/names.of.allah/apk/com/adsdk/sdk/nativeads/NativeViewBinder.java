package com.adsdk.sdk.nativeads;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class NativeViewBinder
{
  private int adLayoutId;
  private Map<String, Integer> imageAssetsBidings;
  private Map<String, Integer> textAssetsBidings;
  
  public NativeViewBinder(int paramInt)
  {
    adLayoutId = paramInt;
    textAssetsBidings = new HashMap();
    imageAssetsBidings = new HashMap();
  }
  
  public void bindImageAsset(String paramString, int paramInt)
  {
    imageAssetsBidings.put(paramString, Integer.valueOf(paramInt));
  }
  
  public void bindTextAsset(String paramString, int paramInt)
  {
    textAssetsBidings.put(paramString, Integer.valueOf(paramInt));
  }
  
  public int getAdLayoutId()
  {
    return adLayoutId;
  }
  
  public int getIdForImageAsset(String paramString)
  {
    paramString = (Integer)imageAssetsBidings.get(paramString);
    if (paramString != null) {
      return paramString.intValue();
    }
    return 0;
  }
  
  public int getIdForTextAsset(String paramString)
  {
    paramString = (Integer)textAssetsBidings.get(paramString);
    if (paramString != null) {
      return paramString.intValue();
    }
    return 0;
  }
  
  public Set<String> getImageAssetsBindingsKeySet()
  {
    return imageAssetsBidings.keySet();
  }
  
  public Set<String> getTextAssetsBindingsKeySet()
  {
    return textAssetsBidings.keySet();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.nativeads.NativeViewBinder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */