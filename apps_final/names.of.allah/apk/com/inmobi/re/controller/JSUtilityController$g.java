package com.inmobi.re.controller;

import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView;
import java.util.TimerTask;

class JSUtilityController$g
  extends TimerTask
{
  JSUtilityController$g(JSUtilityController paramJSUtilityController) {}
  
  public void run()
  {
    try
    {
      a.imWebView.raiseVibrateCompleteEvent();
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "Vibrate callback execption", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.JSUtilityController.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */