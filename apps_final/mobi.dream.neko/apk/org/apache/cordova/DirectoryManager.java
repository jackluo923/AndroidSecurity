package org.apache.cordova;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;

public class DirectoryManager
{
  private static final String LOG_TAG = "DirectoryManager";
  
  private static File constructFilePaths(String paramString1, String paramString2)
  {
    if (paramString2.startsWith(paramString1)) {
      return new File(paramString2);
    }
    return new File(paramString1 + "/" + paramString2);
  }
  
  private static long freeSpaceCalculation(String paramString)
  {
    paramString = new StatFs(paramString);
    long l = paramString.getBlockSize();
    return paramString.getAvailableBlocks() * l / 1024L;
  }
  
  protected static long getFreeDiskSpace(boolean paramBoolean)
  {
    if (Environment.getExternalStorageState().equals("mounted")) {}
    for (long l = freeSpaceCalculation(Environment.getExternalStorageDirectory().getPath());; l = freeSpaceCalculation("/"))
    {
      return l;
      if (!paramBoolean) {
        break;
      }
    }
    return -1L;
  }
  
  protected static String getTempDirectoryPath(Context paramContext)
  {
    if (Environment.getExternalStorageState().equals("mounted")) {}
    for (paramContext = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/" + paramContext.getPackageName() + "/cache/");; paramContext = paramContext.getCacheDir())
    {
      if (!paramContext.exists()) {
        paramContext.mkdirs();
      }
      return paramContext.getAbsolutePath();
    }
  }
  
  protected static boolean testFileExists(String paramString)
  {
    if ((testSaveLocationExists()) && (!paramString.equals(""))) {
      return constructFilePaths(Environment.getExternalStorageDirectory().toString(), paramString).exists();
    }
    return false;
  }
  
  protected static boolean testSaveLocationExists()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.DirectoryManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */