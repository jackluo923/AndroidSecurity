package mobi.monaca.framework.plugin;

import mobi.monaca.framework.util.NetworkUtils;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class HttpServerPlugin$1
  implements Runnable
{
  HttpServerPlugin$1(HttpServerPlugin paramHttpServerPlugin, JSONArray paramJSONArray, CallbackContext paramCallbackContext) {}
  
  public void run()
  {
    try
    {
      Object localObject = val$args.getString(0);
      int i = val$args.getJSONObject(1).getInt("port");
      HttpServerPlugin.access$002(new MonacaLocalServer(this$0.cordova.getActivity(), (String)localObject, i));
      HttpServerPlugin.access$000().start();
      localObject = new JSONObject();
      ((JSONObject)localObject).put("networks", NetworkUtils.getIPAddresses());
      ((JSONObject)localObject).put("port", i);
      val$callbackContext.success((JSONObject)localObject);
      return;
    }
    catch (JSONException localJSONException)
    {
      val$callbackContext.error(localJSONException.getMessage());
      localJSONException.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      val$callbackContext.error("Cannot start server. error: " + localException.getMessage());
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.HttpServerPlugin.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */