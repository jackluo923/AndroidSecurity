package com.adsdk.sdk.mraid;

import android.util.Log;

class MraidDisplayController$4$1
  implements Runnable
{
  MraidDisplayController$4$1(MraidDisplayController.4 param4) {}
  
  public void run()
  {
    MraidDisplayController.access$7(MraidDisplayController.4.access$0(this$1), "Image failed to download.");
    MraidDisplayController.4.access$0(this$1).getMraidView().fireErrorEvent(MraidCommandFactory.MraidJavascriptCommand.STORE_PICTURE, "Error downloading and saving image file.");
    Log.d("MoPub", "Error downloading and saving image file.");
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidDisplayController.4.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */