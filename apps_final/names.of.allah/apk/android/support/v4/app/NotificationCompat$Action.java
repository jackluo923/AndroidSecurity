package android.support.v4.app;

import android.app.PendingIntent;
import android.os.Bundle;

public class NotificationCompat$Action
  extends NotificationCompatBase.Action
{
  public static final NotificationCompatBase.Action.Factory FACTORY = new NotificationCompat.Action.1();
  public PendingIntent actionIntent;
  public int icon;
  private final Bundle mExtras;
  private final RemoteInput[] mRemoteInputs;
  public CharSequence title;
  
  public NotificationCompat$Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    this(paramInt, paramCharSequence, paramPendingIntent, new Bundle(), null);
  }
  
  private NotificationCompat$Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent, Bundle paramBundle, RemoteInput[] paramArrayOfRemoteInput)
  {
    icon = paramInt;
    title = paramCharSequence;
    actionIntent = paramPendingIntent;
    if (paramBundle != null) {}
    for (;;)
    {
      mExtras = paramBundle;
      mRemoteInputs = paramArrayOfRemoteInput;
      return;
      paramBundle = new Bundle();
    }
  }
  
  protected PendingIntent getActionIntent()
  {
    return actionIntent;
  }
  
  public Bundle getExtras()
  {
    return mExtras;
  }
  
  protected int getIcon()
  {
    return icon;
  }
  
  public RemoteInput[] getRemoteInputs()
  {
    return mRemoteInputs;
  }
  
  protected CharSequence getTitle()
  {
    return title;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.Action
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */