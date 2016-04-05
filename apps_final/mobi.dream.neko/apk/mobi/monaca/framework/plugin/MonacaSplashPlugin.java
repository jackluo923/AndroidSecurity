package mobi.monaca.framework.plugin;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import mobi.monaca.framework.psedo.R.string;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.Plugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.json.JSONArray;

public class MonacaSplashPlugin
  extends Plugin
{
  public PluginResult execute(String paramString1, JSONArray paramJSONArray, String paramString2)
  {
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.nc_show)))
    {
      getMonacaPageActivity().showMonacaSplash();
      return new PluginResult(PluginResult.Status.OK);
    }
    if (paramString1.equals(MonacaApplication.getStringFromResource(R.string.nc_hide)))
    {
      getMonacaPageActivity().removeMonacaSplash();
      return new PluginResult(PluginResult.Status.OK);
    }
    return new PluginResult(PluginResult.Status.INVALID_ACTION);
  }
  
  protected MonacaPageActivity getMonacaPageActivity()
  {
    return (MonacaPageActivity)cordova.getActivity();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.MonacaSplashPlugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */