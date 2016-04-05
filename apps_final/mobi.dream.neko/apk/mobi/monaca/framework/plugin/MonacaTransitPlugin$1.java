package mobi.monaca.framework.plugin;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import org.apache.cordova.api.CordovaInterface;
import org.json.JSONArray;

class MonacaTransitPlugin$1
  implements Runnable
{
  MonacaTransitPlugin$1(MonacaTransitPlugin paramMonacaTransitPlugin, JSONArray paramJSONArray) {}
  
  public void run()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse(val$args.optString(0)));
    this$0.cordova.getActivity().startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.MonacaTransitPlugin.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */