package com.google.zxing.client.android.book;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class SearchBookContentsActivity$2
  implements View.OnKeyListener
{
  SearchBookContentsActivity$2(SearchBookContentsActivity paramSearchBookContentsActivity) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 66) && (paramKeyEvent.getAction() == 0))
    {
      SearchBookContentsActivity.access$000(this$0);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.book.SearchBookContentsActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */