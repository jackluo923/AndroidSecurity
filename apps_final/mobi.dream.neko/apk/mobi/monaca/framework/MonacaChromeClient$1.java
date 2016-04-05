package mobi.monaca.framework;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.webkit.GeolocationPermissions.Callback;

class MonacaChromeClient$1
  implements DialogInterface.OnClickListener
{
  MonacaChromeClient$1(MonacaChromeClient paramMonacaChromeClient, String paramString, GeolocationPermissions.Callback paramCallback) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    MonacaChromeClient.access$000(this$0).edit().putBoolean(val$fOrigin, true).commit();
    val$fCallback.invoke(val$fOrigin, true, false);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaChromeClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */