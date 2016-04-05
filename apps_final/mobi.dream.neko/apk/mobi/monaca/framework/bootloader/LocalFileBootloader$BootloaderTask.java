package mobi.monaca.framework.bootloader;

import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.os.Handler;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.utils.MyAsyncTask;

public class LocalFileBootloader$BootloaderTask
  extends MyAsyncTask<Void, Void, Boolean>
{
  protected Handler handler = new Handler();
  protected ProgressDialog loadingDialog = null;
  
  protected LocalFileBootloader$BootloaderTask(LocalFileBootloader paramLocalFileBootloader) {}
  
  protected void dismissProgressDialog()
  {
    handler.post(new Runnable()
    {
      public void run()
      {
        if (loadingDialog != null)
        {
          loadingDialog.dismiss();
          loadingDialog = null;
        }
      }
    });
  }
  
  /* Error */
  protected Boolean doInBackground(Void... paramVarArgs)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
    //   4: invokevirtual 53	mobi/monaca/framework/bootloader/LocalFileBootloader:needsInitialization	()Z
    //   7: istore_3
    //   8: iload_3
    //   9: ifeq +102 -> 111
    //   12: aload_0
    //   13: invokevirtual 56	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:showProgressDialog	()V
    //   16: aload_0
    //   17: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
    //   20: invokevirtual 59	mobi/monaca/framework/bootloader/LocalFileBootloader:clean	()V
    //   23: aload_0
    //   24: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
    //   27: invokevirtual 63	mobi/monaca/framework/bootloader/LocalFileBootloader:getAssetsFileList	()Ljava/util/List;
    //   30: invokeinterface 69 1 0
    //   35: astore_1
    //   36: aload_1
    //   37: invokeinterface 74 1 0
    //   42: ifeq +42 -> 84
    //   45: aload_1
    //   46: invokeinterface 78 1 0
    //   51: checkcast 80	java/lang/String
    //   54: astore_2
    //   55: aload_0
    //   56: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
    //   59: aload_2
    //   60: invokevirtual 84	mobi/monaca/framework/bootloader/LocalFileBootloader:copyAssetToLocal	(Ljava/lang/String;)V
    //   63: goto -27 -> 36
    //   66: astore_1
    //   67: iconst_0
    //   68: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   71: areturn
    //   72: astore_1
    //   73: iconst_0
    //   74: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   77: areturn
    //   78: astore_1
    //   79: iconst_0
    //   80: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   83: areturn
    //   84: aload_0
    //   85: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
    //   88: getfield 94	mobi/monaca/framework/bootloader/LocalFileBootloader:bootloaderPreferences	Lmobi/monaca/framework/bootloader/BootloaderPreferences;
    //   91: aload_0
    //   92: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
    //   95: invokevirtual 98	mobi/monaca/framework/bootloader/LocalFileBootloader:getAppliationVersionCode	()Ljava/lang/String;
    //   98: invokevirtual 103	mobi/monaca/framework/bootloader/BootloaderPreferences:saveAppVersionCode	(Ljava/lang/String;)V
    //   101: aload_0
    //   102: getfield 24	mobi/monaca/framework/bootloader/LocalFileBootloader$BootloaderTask:this$0	Lmobi/monaca/framework/bootloader/LocalFileBootloader;
    //   105: getfield 94	mobi/monaca/framework/bootloader/LocalFileBootloader:bootloaderPreferences	Lmobi/monaca/framework/bootloader/BootloaderPreferences;
    //   108: invokevirtual 106	mobi/monaca/framework/bootloader/BootloaderPreferences:updateLastPackageUpdatedTime	()V
    //   111: iconst_1
    //   112: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   115: areturn
    //   116: astore_1
    //   117: iconst_0
    //   118: invokestatic 90	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   121: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	122	0	this	BootloaderTask
    //   0	122	1	paramVarArgs	Void[]
    //   54	6	2	str	String
    //   7	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   12	36	66	mobi/monaca/framework/bootloader/AbortException
    //   36	63	66	mobi/monaca/framework/bootloader/AbortException
    //   84	111	66	mobi/monaca/framework/bootloader/AbortException
    //   0	8	72	mobi/monaca/framework/bootloader/AbortException
    //   0	8	78	java/lang/RuntimeException
    //   12	36	116	java/lang/RuntimeException
    //   36	63	116	java/lang/RuntimeException
    //   84	111	116	java/lang/RuntimeException
  }
  
  protected void onPostExecute(Boolean paramBoolean)
  {
    dismissProgressDialog();
    if (paramBoolean.booleanValue())
    {
      this$0.success.run();
      return;
    }
    this$0.fail.run();
  }
  
  protected void showAbortAlert()
  {
    showAlert(MonacaApplication.getStringFromResource(R.string.message_abort_alert));
  }
  
  protected void showAlert(final String paramString)
  {
    handler.post(new Runnable()
    {
      public void run()
      {
        new AlertDialog.Builder(this$0.context).setTitle("").setMessage(paramString).setCancelable(true);
      }
    });
  }
  
  protected void showProgressDialog()
  {
    handler.post(new Runnable()
    {
      public void run()
      {
        loadingDialog = new ProgressDialog(this$0.context);
        loadingDialog.setMessage(MonacaApplication.getStringFromResource(R.string.loading));
        loadingDialog.show();
        loadingDialog.setCancelable(false);
      }
    });
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.bootloader.LocalFileBootloader.BootloaderTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */