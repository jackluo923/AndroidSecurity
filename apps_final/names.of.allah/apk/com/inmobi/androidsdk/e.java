package com.inmobi.androidsdk;

import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView.IMWebViewListener;
import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import java.util.Map;

class e
  implements IMWebView.IMWebViewListener
{
  e(InterstitialView paramInterstitialView) {}
  
  public void onDismissAdScreen()
  {
    InterstitialView.a(a, 103, null);
  }
  
  public void onError()
  {
    Log.debug("[InMobi]-[Network]-4.4.1", "Error loading the interstitial ad ");
    InterstitialView.b(a).sendEmptyMessage(310);
  }
  
  public void onExpand() {}
  
  public void onExpandClose() {}
  
  public void onIncentCompleted(Map<Object, Object> paramMap)
  {
    if (InterstitialView.a(a) != null) {
      InterstitialView.a(a).onIncentCompleted(a, paramMap);
    }
  }
  
  public void onLeaveApplication()
  {
    InterstitialView.a(a, 104, null);
  }
  
  public void onResize(ResizeDimensions paramResizeDimensions) {}
  
  public void onResizeClose() {}
  
  public void onShowAdScreen()
  {
    InterstitialView.a(a, 102, null);
  }
  
  public void onUserInteraction(Map<String, String> paramMap)
  {
    if (InterstitialView.a(a) != null) {
      InterstitialView.a(a).onInterstitialInteraction(a, paramMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */