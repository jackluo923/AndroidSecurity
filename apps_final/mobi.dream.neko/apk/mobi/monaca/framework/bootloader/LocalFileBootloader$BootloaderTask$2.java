package mobi.monaca.framework.bootloader;

import android.app.ProgressDialog;

class LocalFileBootloader$BootloaderTask$2
  implements Runnable
{
  LocalFileBootloader$BootloaderTask$2(LocalFileBootloader.BootloaderTask paramBootloaderTask) {}
  
  public void run()
  {
    if (this$1.loadingDialog != null)
    {
      this$1.loadingDialog.dismiss();
      this$1.loadingDialog = null;
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.bootloader.LocalFileBootloader.BootloaderTask.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */