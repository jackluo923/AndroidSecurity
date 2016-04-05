package com.inmobi.re.container.mraidimpl;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import com.inmobi.commons.internal.Log;

class MRAIDInterstitialController$b
  implements View.OnKeyListener
{
  MRAIDInterstitialController$b(MRAIDInterstitialController paramMRAIDInterstitialController) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (4 == paramKeyEvent.getKeyCode())
    {
      bool1 = bool2;
      if (paramKeyEvent.getAction() == 0)
      {
        Log.debug("[InMobi]-[RE]-4.4.1", "Back Button pressed while Interstitial ad is in active state ");
        a.handleInterstitialClose();
        bool1 = bool2;
        if (MRAIDInterstitialController.b(a) > 0L) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */