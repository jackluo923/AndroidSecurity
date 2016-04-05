package mobi.monaca.framework.plugin;

import android.app.Activity;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.bootloader.LocalFileBootloader;
import mobi.monaca.framework.util.MyLog;
import mobi.monaca.framework.util.NetworkUtils;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class HttpServerPlugin
  extends CordovaPlugin
{
  private static final String TAG = HttpServerPlugin.class.getSimpleName();
  private static MonacaLocalServer localServer;
  
  private JSONObject createAddressJSON()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("ip", NetworkUtils.getIPAddress(true));
    localJSONObject.put("port", localServer.getPort());
    return localJSONObject;
  }
  
  public boolean execute(String paramString, final JSONArray paramJSONArray, final CallbackContext paramCallbackContext)
    throws JSONException
  {
    if (paramString.equalsIgnoreCase("getRootDirectoryAbsolutePath"))
    {
      if (localServer != null) {
        paramCallbackContext.success(localServer.getServerRoot());
      }
      for (;;)
      {
        return true;
        paramCallbackContext.error("Error server is not started yet. Plesae start the server before lcalling this");
      }
    }
    if (paramString.equalsIgnoreCase("getAddress"))
    {
      paramCallbackContext.success(createAddressJSON());
      return true;
    }
    if (paramString.equalsIgnoreCase("getStatus"))
    {
      if (localServer == null)
      {
        paramString = new JSONObject();
        paramString.put("status", "stopped");
        paramCallbackContext.success(paramString);
      }
      for (;;)
      {
        return true;
        paramString = createAddressJSON();
        paramString.put("status", "started");
        paramString.put("rootDirectoryAbsolutePath", localServer.getServerRoot());
        paramCallbackContext.success(paramString);
      }
    }
    if (paramString.equalsIgnoreCase("start"))
    {
      if (localServer != null) {
        localServer.stop();
      }
      if (paramJSONArray.length() < 2) {
        paramCallbackContext.error("either documentRoot or params is not supplied");
      }
      for (;;)
      {
        return true;
        paramString = new Runnable()
        {
          public void run()
          {
            try
            {
              Object localObject = paramJSONArray.getString(0);
              int i = paramJSONArray.getJSONObject(1).getInt("port");
              HttpServerPlugin.access$002(new MonacaLocalServer(cordova.getActivity(), (String)localObject, i));
              HttpServerPlugin.localServer.start();
              localObject = new JSONObject();
              ((JSONObject)localObject).put("networks", NetworkUtils.getIPAddresses());
              ((JSONObject)localObject).put("port", i);
              paramCallbackContext.success((JSONObject)localObject);
              return;
            }
            catch (JSONException localJSONException)
            {
              paramCallbackContext.error(localJSONException.getMessage());
              localJSONException.printStackTrace();
              return;
            }
            catch (Exception localException)
            {
              paramCallbackContext.error("Cannot start server. error: " + localException.getMessage());
              localException.printStackTrace();
            }
          }
        };
        paramJSONArray = new Runnable()
        {
          public void run()
          {
            paramCallbackContext.error("Cannot start server.");
          }
        };
        if (((MonacaApplication)cordova.getActivity().getApplication()).enablesBootloader()) {
          LocalFileBootloader.setup(cordova.getActivity(), paramString, paramJSONArray);
        } else {
          paramString.run();
        }
      }
    }
    if (paramString.equalsIgnoreCase("stop"))
    {
      if (localServer != null)
      {
        localServer.stop();
        localServer = null;
        paramCallbackContext.success();
      }
      return true;
    }
    return false;
  }
  
  public void onDestroy()
  {
    MyLog.i(TAG, "Monaca HttpServer plugin onDestroy");
    if (localServer != null)
    {
      MyLog.i(TAG, "closing local server");
      localServer.stop();
    }
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.HttpServerPlugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */