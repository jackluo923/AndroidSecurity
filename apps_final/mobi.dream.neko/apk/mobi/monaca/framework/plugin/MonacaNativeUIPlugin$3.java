package mobi.monaca.framework.plugin;

import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;

class MonacaNativeUIPlugin$3
  implements Runnable
{
  MonacaNativeUIPlugin$3(MonacaNativeUIPlugin paramMonacaNativeUIPlugin) {}
  
  public void run()
  {
    ((MonacaApplication)this$0.getMonacaPageActivity().getApplication()).dismissMonacaSpinnerDialog();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.MonacaNativeUIPlugin.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */