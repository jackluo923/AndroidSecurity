package com.google.android.gms.tagmanager;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.CampaignTrackingService;

public final class InstallReferrerService
  extends IntentService
{
  CampaignTrackingService afN;
  Context afO;
  
  public InstallReferrerService()
  {
    super("InstallReferrerService");
  }
  
  public InstallReferrerService(String paramString)
  {
    super(paramString);
  }
  
  private void a(Context paramContext, Intent paramIntent)
  {
    if (afN == null) {
      afN = new CampaignTrackingService();
    }
    afN.processIntent(paramContext, paramIntent);
  }
  
  protected final void onHandleIntent(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("referrer");
    if (afO != null) {}
    for (Context localContext = afO;; localContext = getApplicationContext())
    {
      ay.d(localContext, str);
      a(localContext, paramIntent);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.InstallReferrerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */