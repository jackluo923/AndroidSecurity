package com.millennialmedia.android;

import java.io.File;
import java.io.FileFilter;

class CachedAd$1
  implements FileFilter
{
  CachedAd$1(CachedAd paramCachedAd) {}
  
  public boolean accept(File paramFile)
  {
    return (paramFile.isFile()) && (paramFile.getName().startsWith(CachedAd.access$000(this$0)));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.CachedAd.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */