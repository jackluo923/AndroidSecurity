package com.admob.android.ads;

import android.widget.ImageView;
import android.widget.ProgressBar;

class AdContainer$2
  extends Thread
{
  final AdContainer this$0;
  
  AdContainer$2(AdContainer paramAdContainer) {}
  
  public void run()
  {
    Object localObject = this$0;
    localObject = AdContainer.access$100((AdContainer)localObject);
    int i;
    if (localObject != null)
    {
      localObject = this$0;
      localObject = AdContainer.access$100((AdContainer)localObject);
      i = 4;
      ((ImageView)localObject).setVisibility(i);
    }
    localObject = this$0;
    localObject = AdContainer.access$000((AdContainer)localObject);
    if (localObject != null)
    {
      localObject = this$0;
      localObject = AdContainer.access$000((AdContainer)localObject);
      i = 0;
      ((ProgressBar)localObject).setVisibility(i);
    }
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdContainer.2
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */