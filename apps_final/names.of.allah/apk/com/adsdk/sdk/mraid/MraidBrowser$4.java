package com.adsdk.sdk.mraid;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

class MraidBrowser$4
  implements View.OnClickListener
{
  MraidBrowser$4(MraidBrowser paramMraidBrowser) {}
  
  public void onClick(View paramView)
  {
    if (MraidBrowser.access$2(this$0).canGoForward()) {
      MraidBrowser.access$2(this$0).goForward();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidBrowser.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */