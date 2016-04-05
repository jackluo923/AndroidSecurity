package com.j256.ormlite.android.apptools;

import java.io.File;
import java.io.FileFilter;

final class OrmLiteConfigUtil$1
  implements FileFilter
{
  public final boolean accept(File paramFile)
  {
    return (paramFile.getName().equals("raw")) && (paramFile.isDirectory());
  }
}

/* Location:
 * Qualified Name:     com.j256.ormlite.android.apptools.OrmLiteConfigUtil.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */