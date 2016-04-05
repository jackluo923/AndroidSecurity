package com.google.analytics.tracking.android;

import android.os.Build.VERSION;
import java.io.File;

class FutureApis
{
  static boolean setOwnerOnlyReadWrite(String paramString)
  {
    if (version() < 9) {
      return false;
    }
    paramString = new File(paramString);
    paramString.setReadable(false, false);
    paramString.setWritable(false, false);
    paramString.setReadable(true, true);
    paramString.setWritable(true, true);
    return true;
  }
  
  public static int version()
  {
    try
    {
      int i = Integer.parseInt(Build.VERSION.SDK);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Log.e("Invalid version number: " + Build.VERSION.SDK);
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.FutureApis
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */