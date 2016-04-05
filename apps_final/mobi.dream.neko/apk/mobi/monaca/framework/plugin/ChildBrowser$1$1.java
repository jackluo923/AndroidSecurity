package mobi.monaca.framework.plugin;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

class ChildBrowser$1$1
  implements DialogInterface.OnDismissListener
{
  ChildBrowser$1$1(ChildBrowser.1 param1) {}
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    try
    {
      paramDialogInterface = new JSONObject();
      paramDialogInterface.put("type", ChildBrowser.access$100());
      ChildBrowser.access$200(this$1.this$0, paramDialogInterface, false);
      return;
    }
    catch (JSONException paramDialogInterface)
    {
      Log.d("ChildBrowser", "Should never happen");
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.ChildBrowser.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */