package mobi.monaca.framework.nativeui.component;

import android.text.SpannableStringBuilder;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.EditText;
import mobi.monaca.framework.nativeui.ComponentEventer;

class SearchBoxComponent$1
  implements View.OnKeyListener
{
  SearchBoxComponent$1(SearchBoxComponent paramSearchBoxComponent) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 66))
    {
      paramView = ((SpannableStringBuilder)this$0.searchEditText.getText()).toString();
      this$0.eventer.onSearch(this$0.searchEditText, paramView);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.SearchBoxComponent.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */