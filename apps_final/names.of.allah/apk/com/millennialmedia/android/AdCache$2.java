package com.millennialmedia.android;

import java.io.File;
import java.io.FileFilter;

final class AdCache$2
  implements FileFilter
{
  public final boolean accept(File paramFile)
  {
    return (!paramFile.isDirectory()) && (paramFile.getName().endsWith("ad.dat"));
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdCache.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */