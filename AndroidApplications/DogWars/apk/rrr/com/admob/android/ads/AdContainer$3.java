package com.admob.android.ads;

class AdContainer$3
  extends Thread
{
  final AdContainer this$0;
  
  AdContainer$3(AdContainer paramAdContainer) {}
  
  public void run()
  {
    Object localObject = this$0;
    localObject = AdContainer.access$300((AdContainer)localObject);
    ((Ad)localObject).clicked();
  }
}

/* Location:
 * Qualified Name:     com.admob.android.ads.AdContainer.3
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */