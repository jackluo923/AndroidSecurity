package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

class MMSDK$Event
{
  public static final String INTENT_EMAIL = "email";
  public static final String INTENT_EXTERNAL_BROWSER = "browser";
  public static final String INTENT_MAPS = "geo";
  public static final String INTENT_MARKET = "market";
  public static final String INTENT_PHONE_CALL = "tel";
  public static final String INTENT_STREAMING_VIDEO = "streamingVideo";
  public static final String INTENT_TXT_MESSAGE = "sms";
  private static final String KEY_ERROR = "error";
  static final String KEY_INTENT_TYPE = "intentType";
  static final String KEY_INTERNAL_ID = "internalId";
  static final String KEY_PACKAGE_NAME = "packageName";
  
  static void displayStarted(MMAdImpl paramMMAdImpl)
  {
    if (MMSDK.access$000()) {
      sendIntent(paramMMAdImpl.getContext(), new Intent("millennialmedia.action.ACTION_DISPLAY_STARTED"), internalId);
    }
    overlayOpened(paramMMAdImpl);
  }
  
  static void fetchStartedCaching(MMAdImpl paramMMAdImpl)
  {
    MMSDK.runOnUiThread(new MMSDK.Event.2(paramMMAdImpl));
    if (MMSDK.access$000()) {
      sendIntent(paramMMAdImpl.getContext(), new Intent("millennialmedia.action.ACTION_FETCH_STARTED_CACHING"), internalId);
    }
  }
  
  static void intentStarted(Context paramContext, String paramString, long paramLong)
  {
    if ((MMSDK.access$000()) && (paramString != null)) {
      sendIntent(paramContext, new Intent("millennialmedia.action.ACTION_INTENT_STARTED").putExtra("intentType", paramString), paramLong);
    }
  }
  
  protected static void logEvent(String paramString)
  {
    MMSDK.Log.d("Logging event to: %s", new Object[] { paramString });
    Utils.ThreadUtils.execute(new MMSDK.Event.1(paramString));
  }
  
  static void overlayClosed(Context paramContext, long paramLong)
  {
    if ((MMSDK.access$000()) && (paramContext != null)) {
      sendIntent(paramContext, new Intent("millennialmedia.action.ACTION_OVERLAY_CLOSED"), paramLong);
    }
  }
  
  static void overlayOpened(MMAdImpl paramMMAdImpl)
  {
    MMSDK.runOnUiThread(new MMSDK.Event.3(paramMMAdImpl));
    overlayOpenedBroadCast(paramMMAdImpl.getContext(), internalId);
  }
  
  static void overlayOpenedBroadCast(Context paramContext, long paramLong)
  {
    if (MMSDK.access$000()) {
      sendIntent(paramContext, new Intent("millennialmedia.action.ACTION_OVERLAY_OPENED"), paramLong);
    }
  }
  
  static void overlayTap(Context paramContext, long paramLong)
  {
    if (MMSDK.access$000()) {
      sendIntent(paramContext, new Intent("millennialmedia.action.ACTION_OVERLAY_TAP"), paramLong);
    }
  }
  
  static void requestCompleted(MMAdImpl paramMMAdImpl)
  {
    MMSDK.runOnUiThread(new MMSDK.Event.4(paramMMAdImpl));
    if (MMSDK.access$000())
    {
      String str = paramMMAdImpl.getRequestCompletedAction();
      sendIntent(paramMMAdImpl.getContext(), new Intent(str), internalId);
    }
  }
  
  static void requestFailed(MMAdImpl paramMMAdImpl, MMException paramMMException)
  {
    MMSDK.runOnUiThread(new MMSDK.Event.5(paramMMAdImpl, paramMMException));
    if (MMSDK.access$000())
    {
      String str = paramMMAdImpl.getRequestFailedAction();
      sendIntent(paramMMAdImpl.getContext(), new Intent(str).putExtra("error", paramMMException), internalId);
    }
  }
  
  private static final void sendIntent(Context paramContext, Intent paramIntent, long paramLong)
  {
    if (paramContext != null)
    {
      paramIntent.addCategory("millennialmedia.category.CATEGORY_SDK");
      if (paramLong != -4L) {
        paramIntent.putExtra("internalId", paramLong);
      }
      paramIntent.putExtra("packageName", paramContext.getPackageName());
      str = paramIntent.getStringExtra("intentType");
      if (TextUtils.isEmpty(str)) {
        break label117;
      }
    }
    label117:
    for (String str = String.format(" Type[%s]", new Object[] { str });; str = "")
    {
      MMSDK.Log.v(" @@ Intent: " + paramIntent.getAction() + " " + str + " for " + paramLong);
      paramContext.sendBroadcast(paramIntent);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMSDK.Event
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */