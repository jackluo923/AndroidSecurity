package com.appyet.data;

import com.j256.ormlite.android.apptools.OrmLiteConfigUtil;

public class DatabaseConfigUtil
  extends OrmLiteConfigUtil
{
  private static final Class<?>[] classes = { Feed.class, FeedItem.class, FileCache.class, Module.class, Web.class, Forum.class };
  
  public static void main(String[] paramArrayOfString)
  {
    writeConfigFile("ormlite_config.txt", classes);
  }
}

/* Location:
 * Qualified Name:     com.appyet.data.DatabaseConfigUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */