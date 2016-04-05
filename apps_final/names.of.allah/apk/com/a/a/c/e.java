package com.a.a.c;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.IOException;

public final class e
{
  public static File a(Context paramContext)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if ("mounted".equals(Environment.getExternalStorageState())) {
      if (paramContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
        break label63;
      }
    }
    label63:
    for (int i = 1;; i = 0)
    {
      localObject1 = localObject2;
      if (i != 0) {
        localObject1 = c(paramContext);
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = paramContext.getCacheDir();
      }
      if (localObject2 == null) {
        d.c("Can't define system cache directory! The app should be re-installed.", new Object[0]);
      }
      return (File)localObject2;
    }
  }
  
  public static File b(Context paramContext)
  {
    paramContext = a(paramContext);
    File localFile = new File(paramContext, "uil-images");
    if ((!localFile.exists()) && (!localFile.mkdir())) {
      return paramContext;
    }
    return localFile;
  }
  
  private static File c(Context paramContext)
  {
    File localFile = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), "Android"), "data"), paramContext.getPackageName()), "cache");
    paramContext = localFile;
    if (!localFile.exists())
    {
      if (!localFile.mkdirs())
      {
        d.c("Unable to create external cache directory", new Object[0]);
        paramContext = null;
      }
    }
    else {
      return paramContext;
    }
    try
    {
      new File(localFile, ".nomedia").createNewFile();
      return localFile;
    }
    catch (IOException paramContext)
    {
      d.b("Can't create \".nomedia\" file in application external cache directory", new Object[0]);
    }
    return localFile;
  }
}

/* Location:
 * Qualified Name:     com.a.a.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */