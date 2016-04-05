package com.actionbarsherlock.internal.widget;

class IcsAdapterView$SelectionNotifier
  implements Runnable
{
  private IcsAdapterView$SelectionNotifier(IcsAdapterView paramIcsAdapterView) {}
  
  public void run()
  {
    if (this$0.mDataChanged)
    {
      if (this$0.getAdapter() != null) {
        this$0.post(this);
      }
      return;
    }
    IcsAdapterView.access$200(this$0);
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsAdapterView.SelectionNotifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */