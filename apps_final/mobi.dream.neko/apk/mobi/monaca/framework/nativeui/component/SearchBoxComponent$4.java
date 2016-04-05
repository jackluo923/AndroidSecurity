package mobi.monaca.framework.nativeui.component;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import mobi.monaca.framework.nativeui.UIContext;

class SearchBoxComponent$4
  implements View.OnClickListener
{
  SearchBoxComponent$4(SearchBoxComponent paramSearchBoxComponent) {}
  
  public void onClick(View paramView)
  {
    this$0.searchEditText.setText("");
    this$0.searchEditText.requestFocus();
    this$0.uiContext.showSoftInput(this$0.searchEditText);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.SearchBoxComponent.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */