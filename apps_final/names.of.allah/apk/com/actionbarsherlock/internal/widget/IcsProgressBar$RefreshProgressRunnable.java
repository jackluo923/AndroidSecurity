package com.actionbarsherlock.internal.widget;

class IcsProgressBar$RefreshProgressRunnable
  implements Runnable
{
  private boolean mFromUser;
  private int mId;
  private int mProgress;
  
  IcsProgressBar$RefreshProgressRunnable(IcsProgressBar paramIcsProgressBar, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    mId = paramInt1;
    mProgress = paramInt2;
    mFromUser = paramBoolean;
  }
  
  public void run()
  {
    IcsProgressBar.access$000(this$0, mId, mProgress, mFromUser, true);
    IcsProgressBar.access$102(this$0, this);
  }
  
  public void setup(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    mId = paramInt1;
    mProgress = paramInt2;
    mFromUser = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsProgressBar.RefreshProgressRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */