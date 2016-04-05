package mobi.monaca.framework;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.GeolocationPermissions.Callback;

class MonacaChromeClient$2
  implements DialogInterface.OnClickListener
{
  MonacaChromeClient$2(MonacaChromeClient paramMonacaChromeClient, GeolocationPermissions.Callback paramCallback, String paramString) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    val$fCallback.invoke(val$fOrigin, false, false);
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.MonacaChromeClient.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */