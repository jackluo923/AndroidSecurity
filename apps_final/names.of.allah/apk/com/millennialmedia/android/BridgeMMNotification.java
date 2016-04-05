package com.millennialmedia.android;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageManager;
import android.os.Vibrator;
import java.lang.ref.WeakReference;
import java.util.HashMap;

class BridgeMMNotification
  extends MMJSObject
  implements DialogInterface.OnClickListener
{
  private int index;
  
  public MMJSResponse alert(HashMap<String, String> paramHashMap)
  {
    try
    {
      paramHashMap = runOnUiThreadFuture(new BridgeMMNotification.1(this, paramHashMap));
      return paramHashMap;
    }
    finally
    {
      paramHashMap = finally;
      throw paramHashMap;
    }
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (paramInt == -2) {}
    try
    {
      index = 0;
      if (paramInt == -3) {
        index = 1;
      }
      if (paramInt == -1) {
        index = 2;
      }
      paramDialogInterface.cancel();
      notify();
      return;
    }
    finally {}
  }
  
  public MMJSResponse vibrate(HashMap<String, String> paramHashMap)
  {
    Context localContext = (Context)contextRef.get();
    if (paramHashMap.containsKey("duration")) {}
    for (long l = (Float.parseFloat((String)paramHashMap.get("duration")) * 1000.0D);; l = 0L)
    {
      if ((localContext != null) && (l > 0L))
      {
        if (localContext.getPackageManager().checkPermission("android.permission.VIBRATE", localContext.getPackageName()) == 0)
        {
          ((Vibrator)localContext.getSystemService("vibrator")).vibrate(l);
          return MMJSResponse.responseWithSuccess("Vibrating for " + l);
        }
        return MMJSResponse.responseWithError("The required permissions to vibrate are not set.");
      }
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMNotification
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */