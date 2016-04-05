package mobi.monaca.framework.plugin;

import java.io.File;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.MonacaPageActivity;
import mobi.monaca.framework.psedo.R.string;

class MonacaTransitPlugin$2
  implements Runnable
{
  MonacaTransitPlugin$2(MonacaTransitPlugin paramMonacaTransitPlugin, String paramString) {}
  
  public void run()
  {
    if (val$newUri.startsWith(MonacaApplication.getStringFromResource(R.string.file_scheme))) {
      try
      {
        this$0.getMonacaPageActivity().loadUri(MonacaApplication.getStringFromResource(R.string.file_scheme) + new File(val$newUri.substring(7)).getCanonicalPath(), false);
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        this$0.getMonacaPageActivity().loadUri(this$0.getMonacaPageActivity().getCurrentUriWithoutOptions(), false);
        return;
      }
    }
    this$0.getMonacaPageActivity().loadUri(this$0.getMonacaPageActivity().getCurrentUriWithoutOptions(), false);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.MonacaTransitPlugin.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */