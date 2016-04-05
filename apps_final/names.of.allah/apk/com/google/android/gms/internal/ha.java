package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Log;

public class ha
  implements DialogInterface.OnClickListener
{
  private final Fragment FS;
  private final int FT;
  private final Intent mIntent;
  private final Activity oe;
  
  public ha(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    oe = paramActivity;
    FS = null;
    mIntent = paramIntent;
    FT = paramInt;
  }
  
  public ha(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    oe = null;
    FS = paramFragment;
    mIntent = paramIntent;
    FT = paramInt;
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      if ((mIntent != null) && (FS != null)) {
        FS.startActivityForResult(mIntent, FT);
      }
      for (;;)
      {
        paramDialogInterface.dismiss();
        return;
        if (mIntent != null) {
          oe.startActivityForResult(mIntent, FT);
        }
      }
      return;
    }
    catch (ActivityNotFoundException paramDialogInterface)
    {
      Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */