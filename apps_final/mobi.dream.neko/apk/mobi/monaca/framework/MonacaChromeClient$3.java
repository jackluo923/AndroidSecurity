package mobi.monaca.framework;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.webkit.GeolocationPermissions.Callback;

class MonacaChromeClient$3
  implements DialogInterface.OnCancelListener
{
  MonacaChromeClient$3(MonacaChromeClient paramMonacaChromeClient, GeolocationPermissions.Callback paramCallback, String paramString) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    val$fCallback.invoke(val$fOrigin, false, false);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaChromeClient.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */