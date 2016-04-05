package com.admob.android.ads;

import android.graphics.Matrix;
import android.widget.ImageView;
import android.widget.ProgressBar;

class AdContainer$1
  extends Thread
{
  final AdContainer this$0;
  
  AdContainer$1(AdContainer paramAdContainer) {}
  
  public void run()
  {
    int j = 0;
    Object localObject = this$0;
    localObject = AdContainer.access$000((AdContainer)localObject);
    if (localObject != null)
    {
      localObject = this$0;
      localObject = AdContainer.access$000((AdContainer)localObject);
      int i = 4;
      ((ProgressBar)localObject).setVisibility(i);
    }
    localObject = this$0;
    localObject = AdContainer.access$100((AdContainer)localObject);
    if (localObject != null)
    {
      localObject = this$0;
      localObject = AdContainer.access$100((AdContainer)localObject);
      Matrix localMatrix = new android/graphics/Matrix;
      localMatrix.<init>();
      ((ImageView)localObject).setImageMatrix(localMatrix);
      localObject = this$0;
      localObject = AdContainer.access$100((AdContainer)localObject);
      ((ImageView)localObject).setVisibility(j);
    }
    localObject = this$0;
    AdContainer.access$202((AdContainer)localObject, j);
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdContainer.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */