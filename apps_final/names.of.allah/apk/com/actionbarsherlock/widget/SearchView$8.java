package com.actionbarsherlock.widget;

import android.support.v4.view.r;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class SearchView$8
  implements View.OnKeyListener
{
  SearchView$8(SearchView paramSearchView) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (SearchView.access$1500(this$0) == null) {}
    do
    {
      return false;
      if ((SearchView.access$1300(this$0).isPopupShowing()) && (SearchView.access$1300(this$0).getListSelection() != -1)) {
        return SearchView.access$1600(this$0, paramView, paramInt, paramKeyEvent);
      }
    } while ((SearchView.SearchAutoComplete.access$1700(SearchView.access$1300(this$0))) || (!r.b(paramKeyEvent)));
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 66))
    {
      paramView.cancelLongPress();
      SearchView.access$1800(this$0, 0, null, SearchView.access$1300(this$0).getText().toString());
      return true;
    }
    paramKeyEvent.getAction();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.actionbarsherlock.widget.SearchView.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */