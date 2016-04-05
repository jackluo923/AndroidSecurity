package com.adsdk.sdk.mraid;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;

public class Mraids
{
  public static final String ANDROID_CALENDAR_CONTENT_TYPE = "vnd.android.cursor.item/event";
  
  public static boolean isCalendarAvailable(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.item/event");
    return (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH)) && (Utils.deviceCanHandleIntent(paramContext, localIntent));
  }
  
  public static boolean isInlineVideoAvailable(Context paramContext)
  {
    return Utils.deviceCanHandleIntent(paramContext, new Intent(paramContext, MraidVideoPlayerActivity.class));
  }
  
  public static boolean isSmsAvailable(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("sms:"));
    return Utils.deviceCanHandleIntent(paramContext, localIntent);
  }
  
  public static boolean isStorePictureSupported(Context paramContext)
  {
    return ("mounted".equals(Environment.getExternalStorageState())) && (paramContext.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0);
  }
  
  public static boolean isTelAvailable(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.DIAL");
    localIntent.setData(Uri.parse("tel:"));
    return Utils.deviceCanHandleIntent(paramContext, localIntent);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.Mraids
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */