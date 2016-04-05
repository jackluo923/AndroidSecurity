package mobi.monaca.framework.nativeui.component;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import org.json.JSONException;
import org.json.JSONObject;

class SearchBoxComponent$2
  implements View.OnFocusChangeListener
{
  SearchBoxComponent$2(SearchBoxComponent paramSearchBoxComponent) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    try
    {
      this$0.style.put("focus", paramBoolean);
      return;
    }
    catch (JSONException paramView) {}
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.nativeui.component.SearchBoxComponent.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */