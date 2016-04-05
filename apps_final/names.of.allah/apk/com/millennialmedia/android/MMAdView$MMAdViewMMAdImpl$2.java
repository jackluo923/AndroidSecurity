package com.millennialmedia.android;

import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import java.util.Random;

class MMAdView$MMAdViewMMAdImpl$2
  implements Runnable
{
  MMAdView$MMAdViewMMAdImpl$2(MMAdView.MMAdViewMMAdImpl paramMMAdViewMMAdImpl) {}
  
  public void run()
  {
    int j = this$1.this$0.transitionType;
    int i = j;
    if (j == 4) {
      i = new Random().nextInt(4);
    }
    Object localObject;
    switch (i)
    {
    default: 
      localObject = new AlphaAnimation(1.0F, 0.0F);
    }
    for (;;)
    {
      ((Animation)localObject).setDuration(1000L);
      ((Animation)localObject).setAnimationListener(this$1.this$0);
      ((Animation)localObject).setFillEnabled(true);
      ((Animation)localObject).setFillBefore(true);
      ((Animation)localObject).setFillAfter(true);
      this$1.this$0.refreshAnimationimageView.startAnimation((Animation)localObject);
      return;
      localObject = new TranslateAnimation(0.0F, 0.0F, 0.0F, -this$1.this$0.getHeight());
      continue;
      localObject = new TranslateAnimation(0.0F, 0.0F, 0.0F, this$1.this$0.getHeight());
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdView.MMAdViewMMAdImpl.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */