package com.inmobi.androidsdk;

import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView.IMWebViewListener;
import com.inmobi.re.container.mraidimpl.ResizeDimensions;
import java.util.Map;

class b
  implements IMWebView.IMWebViewListener
{
  b(BannerView paramBannerView) {}
  
  public void onDismissAdScreen()
  {
    BannerView.a(a, 103, null);
  }
  
  public void onError()
  {
    Log.debug("[InMobi]-[Network]-4.4.1", "Error loading ad ");
    BannerView.p(a).sendEmptyMessage(111);
  }
  
  public void onExpand()
  {
    BannerView.a(a, 102, null);
  }
  
  public void onExpandClose()
  {
    BannerView.a(a, 103, null);
  }
  
  public void onIncentCompleted(Map<Object, Object> paramMap) {}
  
  public void onLeaveApplication()
  {
    BannerView.a(a, 104, null);
  }
  
  public void onResize(ResizeDimensions paramResizeDimensions)
  {
    BannerView.a(a, 105, null);
  }
  
  public void onResizeClose()
  {
    BannerView.a(a, 106, null);
  }
  
  public void onShowAdScreen()
  {
    BannerView.a(a, 102, null);
  }
  
  public void onUserInteraction(Map<String, String> paramMap)
  {
    BannerView.a(a).onBannerInteraction(a, paramMap);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */