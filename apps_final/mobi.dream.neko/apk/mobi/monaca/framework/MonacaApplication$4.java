package mobi.monaca.framework;

import android.content.Context;
import mobi.monaca.framework.task.GCMRegistrationIdSenderTask;
import org.json.JSONObject;

class MonacaApplication$4
  extends GCMRegistrationIdSenderTask
{
  MonacaApplication$4(MonacaApplication paramMonacaApplication, Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext, paramString1, paramString2);
  }
  
  protected void onClosedTask() {}
  
  protected void onFailedRegistration(JSONObject paramJSONObject) {}
  
  protected void onSucceededRegistration(JSONObject paramJSONObject) {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaApplication.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */