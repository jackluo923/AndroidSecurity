package com.adsdk.sdk.video;

import android.graphics.drawable.Drawable;
import android.os.Handler;

class NavIcon$1
  implements Runnable
{
  NavIcon$1(NavIcon paramNavIcon, String paramString) {}
  
  public void run()
  {
    Drawable localDrawable = NavIcon.access$0(this$0, val$url);
    if (localDrawable != null) {
      NavIcon.access$1(this$0).post(new NavIcon.1.1(this, localDrawable));
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.NavIcon.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */