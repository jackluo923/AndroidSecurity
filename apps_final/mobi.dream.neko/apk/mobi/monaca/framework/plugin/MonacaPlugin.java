package mobi.monaca.framework.plugin;

import mobi.monaca.utils.MonacaDevice;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class MonacaPlugin
  extends CordovaPlugin
{
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    if (paramString.equals("getRuntimeConfiguration"))
    {
      paramString = new JSONObject();
      paramString.put("deviceId", MonacaDevice.getDeviceId(cordova.getActivity()));
      paramCallbackContext.success(paramString);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.MonacaPlugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */