package com.inmobi.androidsdk;

import android.view.View;
import android.view.View.OnClickListener;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.mraidimpl.MRAIDInterstitialController;

class IMBrowserActivity$i
  implements View.OnClickListener
{
  IMBrowserActivity$i(IMBrowserActivity paramIMBrowserActivity) {}
  
  public void onClick(View paramView)
  {
    if ((IMBrowserActivity.a() != null) && (amInterstitialController != null)) {
      amInterstitialController.handleInterstitialClose();
    }
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.IMBrowserActivity.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */