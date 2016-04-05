package com.google.analytics.tracking.android;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import java.io.IOException;
import java.io.OutputStream;

public class CampaignTrackingService
  extends IntentService
{
  public CampaignTrackingService()
  {
    super("CampaignIntentService");
  }
  
  public CampaignTrackingService(String paramString)
  {
    super(paramString);
  }
  
  public void onHandleIntent(Intent paramIntent)
  {
    processIntent(this, paramIntent);
  }
  
  public void processIntent(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getStringExtra("referrer");
    try
    {
      paramContext = paramContext.openFileOutput("gaInstallData", 0);
      paramContext.write(paramIntent.getBytes());
      paramContext.close();
      return;
    }
    catch (IOException paramContext)
    {
      Log.e("Error storing install campaign.");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.CampaignTrackingService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */