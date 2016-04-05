package org.apache.cordova;

class CordovaActivity$2
  implements Runnable
{
  CordovaActivity$2(CordovaActivity paramCordovaActivity1, CordovaActivity paramCordovaActivity2, String paramString) {}
  
  public void run()
  {
    val$me.spinnerStop();
    val$me.appView.showWebPage(val$errorUrl, false, true, null);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */