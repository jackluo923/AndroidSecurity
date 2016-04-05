package com.YahwehOrNoWay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class PostingServiceReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = "android.intent.action.BOOT_COMPLETED";
    Object localObject = paramIntent.getAction();
    boolean bool = str.equals(localObject);
    if (bool)
    {
      Intent localIntent = new android/content/Intent;
      localObject = theword.class;
      localIntent.<init>(paramContext, (Class)localObject);
      paramContext.startService(localIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.YahwehOrNoWay.PostingServiceReceiver
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */