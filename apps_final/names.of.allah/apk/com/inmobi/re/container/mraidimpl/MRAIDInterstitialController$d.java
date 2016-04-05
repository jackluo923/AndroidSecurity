package com.inmobi.re.container.mraidimpl;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;

class MRAIDInterstitialController$d
  implements Runnable
{
  MRAIDInterstitialController$d(MRAIDInterstitialController paramMRAIDInterstitialController, RelativeLayout paramRelativeLayout, FrameLayout paramFrameLayout) {}
  
  public void run()
  {
    a.removeView(MRAIDInterstitialController.a(c));
    b.removeView(a);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDInterstitialController.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */