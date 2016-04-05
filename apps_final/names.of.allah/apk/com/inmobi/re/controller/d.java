package com.inmobi.re.controller;

import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.mraidimpl.AudioTriggerCallback;

class d
  implements AudioTriggerCallback
{
  d(JSUtilityController paramJSUtilityController) {}
  
  public void audioLevel(double paramDouble)
  {
    a.imWebView.raiseMicEvent(paramDouble);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.controller.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */