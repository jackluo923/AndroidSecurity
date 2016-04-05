package mobi.monaca.framework.bootloader;

import android.app.ProgressDialog;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;

class LocalFileBootloader$BootloaderTask$1
  implements Runnable
{
  LocalFileBootloader$BootloaderTask$1(LocalFileBootloader.BootloaderTask paramBootloaderTask) {}
  
  public void run()
  {
    this$1.loadingDialog = new ProgressDialog(this$1.this$0.context);
    this$1.loadingDialog.setMessage(MonacaApplication.getStringFromResource(R.string.loading));
    this$1.loadingDialog.show();
    this$1.loadingDialog.setCancelable(false);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.bootloader.LocalFileBootloader.BootloaderTask.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */