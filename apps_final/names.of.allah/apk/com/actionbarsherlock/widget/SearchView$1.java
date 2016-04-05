package com.actionbarsherlock.widget;

import android.content.Context;
import android.view.inputmethod.InputMethodManager;

class SearchView$1
  implements Runnable
{
  SearchView$1(SearchView paramSearchView) {}
  
  public void run()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)this$0.getContext().getSystemService("input_method");
    if (localInputMethodManager != null) {
      SearchView.access$000(this$0, localInputMethodManager, 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.SearchView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */