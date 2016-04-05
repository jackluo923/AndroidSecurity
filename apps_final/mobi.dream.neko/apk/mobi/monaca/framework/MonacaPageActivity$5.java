package mobi.monaca.framework;

import android.view.Display;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.widget.LinearLayout;
import mobi.monaca.framework.psedo.R.string;
import org.json.JSONException;
import org.json.JSONObject;

class MonacaPageActivity$5
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  MonacaPageActivity$5(MonacaPageActivity paramMonacaPageActivity) {}
  
  public void onGlobalLayout()
  {
    try
    {
      int i = ((WindowManager)this$0.getSystemService("window")).getDefaultDisplay().getHeight();
      int j = MonacaPageActivity.access$000(this$0).getHeight();
      this$0.infoForJavaScript.put(this$0.getString(R.string.info_statusbar_height), i - j);
      return;
    }
    catch (JSONException localJSONException) {}
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaPageActivity.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */