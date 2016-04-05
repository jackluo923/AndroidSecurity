package mobi.monaca.framework.plugin;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import org.json.JSONArray;

class MonacaNativeUIPlugin$2
  implements Runnable
{
  MonacaNativeUIPlugin$2(MonacaNativeUIPlugin paramMonacaNativeUIPlugin, JSONArray paramJSONArray) {}
  
  public void run()
  {
    MonacaApplication localMonacaApplication = (MonacaApplication)this$0.getMonacaPageActivity().getApplication();
    try
    {
      localMonacaApplication.updateSpinnerTitle(val$args.optString(0));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.MonacaNativeUIPlugin.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */