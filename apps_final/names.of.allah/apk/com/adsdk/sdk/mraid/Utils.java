package com.adsdk.sdk.mraid;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

public class Utils
{
  public static boolean deviceCanHandleIntent(Context paramContext, Intent paramIntent)
  {
    boolean bool = false;
    if (paramContext.getPackageManager().queryIntentActivities(paramIntent, 0).size() > 0) {
      bool = true;
    }
    return bool;
  }
  
  public static String sha1(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("SHA-1");
      ((MessageDigest)localObject).update(paramString.getBytes());
      paramString = ((MessageDigest)localObject).digest();
      localObject = new StringBuffer();
      int i = 0;
      for (;;)
      {
        if (i >= paramString.length) {
          return ((StringBuffer)localObject).toString();
        }
        ((StringBuffer)localObject).append(Integer.toHexString(paramString[i] & 0xFF | 0x100).substring(1));
        i += 1;
      }
      return "";
    }
    catch (NoSuchAlgorithmException paramString)
    {
      return "";
    }
    catch (NullPointerException paramString) {}
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.Utils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */