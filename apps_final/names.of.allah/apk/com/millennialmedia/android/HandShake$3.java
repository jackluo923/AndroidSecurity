package com.millennialmedia.android;

import android.content.Context;
import android.view.WindowManager.BadTokenException;
import android.widget.Toast;

class HandShake$3
  implements Runnable
{
  HandShake$3(HandShake paramHandShake, Context paramContext, String paramString) {}
  
  public void run()
  {
    try
    {
      Toast.makeText(val$context, "Error: " + val$message, 1).show();
      return;
    }
    catch (WindowManager.BadTokenException localBadTokenException)
    {
      localBadTokenException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.HandShake.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */