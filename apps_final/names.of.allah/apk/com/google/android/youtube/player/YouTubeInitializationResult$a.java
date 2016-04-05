package com.google.android.youtube.player;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.util.Log;
import com.google.android.youtube.player.internal.ac;

final class YouTubeInitializationResult$a
  implements DialogInterface.OnClickListener
{
  private final Activity a;
  private final Intent b;
  private final int c;
  
  public YouTubeInitializationResult$a(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    a = ((Activity)ac.a(paramActivity, "activity cannot be null"));
    b = ((Intent)ac.a(paramIntent, "intent cannot be null"));
    c = ((Integer)ac.a(Integer.valueOf(paramInt), "requestCode cannot be null")).intValue();
  }
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      a.startActivityForResult(b, c);
      paramDialogInterface.dismiss();
      return;
    }
    catch (ActivityNotFoundException paramDialogInterface)
    {
      Log.e("YouTubeAndroidPlayerAPI", String.format("Can't perform resolution for YouTubeInitalizationError", new Object[] { paramDialogInterface }));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubeInitializationResult.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */