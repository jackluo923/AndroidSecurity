package com.actionbarsherlock.internal.widget;

class IcsListPopupWindow$ResizePopupRunnable
  implements Runnable
{
  private IcsListPopupWindow$ResizePopupRunnable(IcsListPopupWindow paramIcsListPopupWindow) {}
  
  public void run()
  {
    if ((IcsListPopupWindow.access$600(this$0) != null) && (IcsListPopupWindow.access$600(this$0).getCount() > IcsListPopupWindow.access$600(this$0).getChildCount()) && (IcsListPopupWindow.access$600(this$0).getChildCount() <= IcsListPopupWindow.access$700(this$0)))
    {
      IcsListPopupWindow.access$800(this$0).setInputMethodMode(2);
      this$0.show();
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsListPopupWindow.ResizePopupRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */