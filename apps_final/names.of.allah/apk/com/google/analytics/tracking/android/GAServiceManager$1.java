package com.google.analytics.tracking.android;

class GAServiceManager$1
  implements AnalyticsStoreStateListener
{
  GAServiceManager$1(GAServiceManager paramGAServiceManager) {}
  
  public void reportStoreIsEmpty(boolean paramBoolean)
  {
    this$0.updatePowerSaveMode(paramBoolean, GAServiceManager.access$000(this$0));
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.GAServiceManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */