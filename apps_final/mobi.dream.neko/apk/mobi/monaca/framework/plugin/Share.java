package mobi.monaca.framework.plugin;

import android.content.Intent;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.Plugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class Share
  extends Plugin
{
  private void doSendIntent(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.setType("text/plain");
    localIntent.putExtra("android.intent.extra.SUBJECT", paramString1);
    localIntent.putExtra("android.intent.extra.TEXT", paramString2);
    cordova.startActivityForResult(this, localIntent, 0);
  }
  
  public PluginResult execute(String paramString1, JSONArray paramJSONArray, String paramString2)
  {
    try
    {
      paramString1 = paramJSONArray.getJSONObject(0);
      doSendIntent(paramString1.getString("subject"), paramString1.getString("text"));
      paramString1 = new PluginResult(PluginResult.Status.OK);
      return paramString1;
    }
    catch (JSONException paramString1) {}
    return new PluginResult(PluginResult.Status.JSON_EXCEPTION);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.Share
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */