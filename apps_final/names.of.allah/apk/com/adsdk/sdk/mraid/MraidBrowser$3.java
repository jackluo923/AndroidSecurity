package com.adsdk.sdk.mraid;

import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebView;

class MraidBrowser$3
  implements View.OnClickListener
{
  MraidBrowser$3(MraidBrowser paramMraidBrowser) {}
  
  public void onClick(View paramView)
  {
    if (MraidBrowser.access$2(this$0).canGoBack()) {
      MraidBrowser.access$2(this$0).goBack();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidBrowser.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */