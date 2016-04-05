package com.millennialmedia.android;

import java.io.File;
import java.io.FilenameFilter;

class VideoAd$2
  implements FilenameFilter
{
  VideoAd$2(VideoAd paramVideoAd) {}
  
  public boolean accept(File paramFile, String paramString)
  {
    if (this$0.getId() == null) {
      return false;
    }
    return paramString.startsWith(this$0.getId());
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoAd.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */