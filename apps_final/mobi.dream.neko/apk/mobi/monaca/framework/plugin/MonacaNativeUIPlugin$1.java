package mobi.monaca.framework.plugin;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import org.json.JSONArray;

class MonacaNativeUIPlugin$1
  implements Runnable
{
  MonacaNativeUIPlugin$1(MonacaNativeUIPlugin paramMonacaNativeUIPlugin, JSONArray paramJSONArray) {}
  
  public void run()
  {
    MonacaApplication localMonacaApplication = (MonacaApplication)this$0.getMonacaPageActivity().getApplication();
    try
    {
      localMonacaApplication.showMonacaSpinnerDialog(this$0.getMonacaPageActivity().getUiContext(), val$args);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.MonacaNativeUIPlugin.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */