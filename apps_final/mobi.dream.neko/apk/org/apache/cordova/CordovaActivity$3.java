package org.apache.cordova;

class CordovaActivity$3
  implements Runnable
{
  CordovaActivity$3(CordovaActivity paramCordovaActivity1, boolean paramBoolean, CordovaActivity paramCordovaActivity2, String paramString1, String paramString2) {}
  
  public void run()
  {
    if (val$exit)
    {
      val$me.appView.setVisibility(8);
      val$me.displayError("Application Error", val$description + " (" + val$failingUrl + ")", "OK", val$exit);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */