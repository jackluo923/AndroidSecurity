package com.adsdk.sdk.mraid;

import android.os.Handler;

class MraidDisplayController$1
  implements Runnable
{
  MraidDisplayController$1(MraidDisplayController paramMraidDisplayController) {}
  
  public void run()
  {
    boolean bool = this$0.checkViewable();
    if (MraidDisplayController.access$0(this$0) != bool)
    {
      MraidDisplayController.access$1(this$0, bool);
      this$0.getMraidView().fireChangeEventForProperty(MraidViewableProperty.createWithViewable(MraidDisplayController.access$0(this$0)));
    }
    MraidDisplayController.access$2(this$0).postDelayed(this, 3000L);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidDisplayController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */