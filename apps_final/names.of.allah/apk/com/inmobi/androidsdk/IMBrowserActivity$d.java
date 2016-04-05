package com.inmobi.androidsdk;

import android.view.View;
import android.view.View.OnClickListener;
import com.inmobi.re.container.IMWebView;

class IMBrowserActivity$d
  implements View.OnClickListener
{
  IMBrowserActivity$d(IMBrowserActivity paramIMBrowserActivity) {}
  
  public void onClick(View paramView)
  {
    if (IMBrowserActivity.c() != null) {
      IMBrowserActivity.c().close();
    }
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.IMBrowserActivity.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */