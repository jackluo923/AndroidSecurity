package mobi.monaca.framework.psedo;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gcm.GCMBaseIntentService;
import java.io.Serializable;
import mobi.monaca.framework.AppJsonSetting;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaNotifActivity;
import mobi.monaca.utils.gcm.GCMPushDataset;

public class GCMIntentService
  extends GCMBaseIntentService
{
  public static final String ACTION_GCM_REGISTERED = "gcm_registered";
  public static final String KEY_REGID = "gcm_registered_regid";
  private static final String TAG = GCMIntentService.class.getSimpleName();
  
  protected String[] getSenderIds(Context paramContext)
  {
    return new String[] { ((MonacaApplication)getApplication()).getAppJsonSetting().getSenderId() };
  }
  
  protected void onError(Context paramContext, String paramString) {}
  
  protected void onMessage(Context paramContext, Intent paramIntent)
  {
    Object localObject2 = paramIntent.getExtras();
    if (localObject2 == null) {
      return;
    }
    paramIntent = paramContext.getApplicationContext();
    String str = ((Bundle)localObject2).getString(MonacaApplication.getStringFromResource(R.string.key_message));
    Object localObject1 = new GCMPushDataset(((Bundle)localObject2).getString(MonacaApplication.getStringFromResource(R.string.key_push_project_id)), ((Bundle)localObject2).getString(MonacaApplication.getStringFromResource(R.string.key_extra_json)));
    int i = (int)System.currentTimeMillis();
    if (((Bundle)localObject2).getString(MonacaApplication.getStringFromResource(R.string.key_title)) != null) {}
    for (paramContext = ((Bundle)localObject2).getString(MonacaApplication.getStringFromResource(R.string.key_title));; paramContext = getString(R.string.app_name))
    {
      localObject2 = new Intent(paramIntent, MonacaNotifActivity.class);
      ((Intent)localObject2).putExtra("get_pushdata_key", (Serializable)localObject1);
      ((Intent)localObject2).setFlags(268435456);
      ((Intent)localObject2).setAction("%%HASH%%" + i);
      localObject1 = PendingIntent.getActivity(paramIntent, i, (Intent)localObject2, 268435456);
      localObject2 = new Notification();
      flags = 16;
      icon = R.drawable.icon;
      tickerText = paramContext;
      ((Notification)localObject2).setLatestEventInfo(paramIntent, paramContext, str, (PendingIntent)localObject1);
      ((NotificationManager)paramIntent.getSystemService("notification")).notify(i, (Notification)localObject2);
      return;
    }
  }
  
  protected void onRegistered(Context paramContext, String paramString)
  {
    paramContext = new Intent();
    paramContext.setAction("gcm_registered");
    paramContext.putExtra("gcm_registered_regid", paramString);
    sendBroadcast(paramContext);
  }
  
  protected void onUnregistered(Context paramContext, String paramString) {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.psedo.GCMIntentService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */