package com.adsdk.sdk.video;

import java.io.Serializable;

public class NavIconData
  implements Serializable
{
  public static final int TYPE_EXTERNAL = 1;
  public static final int TYPE_INAPP = 0;
  private static final long serialVersionUID = -6812948324043252699L;
  String clickUrl;
  String iconUrl;
  int openType;
  String title;
  
  public String toString()
  {
    return "NavIconData [title=" + title + ", iconUrl=" + iconUrl + ", openType=" + openType + ", clickUrl=" + clickUrl + "]";
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.NavIconData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */