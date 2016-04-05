package com.inmobi.androidsdk.bootstrapper;

import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.Map;

public class AppGalleryConfigParams
{
  String a = "http://appgalleries.inmobi.com/inmobi_sdk";
  
  public String getUrl()
  {
    return a;
  }
  
  public void setFromMap(Map<String, Object> paramMap)
  {
    a = InternalSDKUtil.getStringFromMap(paramMap, "url");
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.bootstrapper.AppGalleryConfigParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */