package com.adsdk.sdk.mraid;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;

class MraidBrowserController
  extends MraidAbstractController
{
  private static final String LOGTAG = "MraidBrowserController";
  private Context mContext;
  
  MraidBrowserController(MraidView paramMraidView)
  {
    super(paramMraidView);
    mContext = paramMraidView.getContext();
  }
  
  private boolean canHandleApplicationUrl(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    if (!Utils.deviceCanHandleIntent(mContext, localIntent))
    {
      Log.w("MoPub", "Could not handle application specific action: " + paramString + ". You may be running in the emulator or another device which does not have the required application.");
      return false;
    }
    return true;
  }
  
  private boolean executeIntent(Context paramContext, Intent paramIntent, String paramString)
  {
    try
    {
      paramContext.startActivity(paramIntent);
      return true;
    }
    catch (Exception paramContext)
    {
      if (paramString == null) {}
    }
    for (;;)
    {
      Log.d("MoPub", paramString);
      return false;
      paramString = "Unable to start intent.";
    }
  }
  
  private boolean isWebSiteUrl(String paramString)
  {
    return (paramString.startsWith("http://")) || (paramString.startsWith("https://"));
  }
  
  private boolean launchApplicationUrl(String paramString)
  {
    paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    paramString.addFlags(268435456);
    return executeIntent(getMraidView().getContext(), paramString, "Unable to open intent.");
  }
  
  protected void open(String paramString)
  {
    Log.d("MraidBrowserController", "Opening url: " + paramString);
    Object localObject = getMraidView();
    if (((MraidView)localObject).getOnOpenListener() != null) {
      ((MraidView)localObject).getOnOpenListener().onOpen((MraidView)localObject);
    }
    if ((!isWebSiteUrl(paramString)) && (canHandleApplicationUrl(paramString)))
    {
      launchApplicationUrl(paramString);
      return;
    }
    localObject = new Intent(mContext, MraidBrowser.class);
    ((Intent)localObject).putExtra("extra_url", paramString);
    ((Intent)localObject).addFlags(268435456);
    mContext.startActivity((Intent)localObject);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidBrowserController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */