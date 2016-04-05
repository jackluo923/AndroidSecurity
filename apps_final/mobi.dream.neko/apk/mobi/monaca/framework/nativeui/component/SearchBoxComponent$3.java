package mobi.monaca.framework.nativeui.component;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

class SearchBoxComponent$3
  implements TextWatcher
{
  SearchBoxComponent$3(SearchBoxComponent paramSearchBoxComponent) {}
  
  public void afterTextChanged(Editable paramEditable)
  {
    paramEditable = this$0.clearButton;
    if (this$0.searchEditText.getText().toString().equals("")) {}
    for (int i = 8;; i = 0)
    {
      paramEditable.setVisibility(i);
      return;
    }
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.SearchBoxComponent.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */