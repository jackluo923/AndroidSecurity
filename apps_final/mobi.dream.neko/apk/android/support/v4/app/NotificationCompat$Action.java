package android.support.v4.app;

import android.app.PendingIntent;

public class NotificationCompat$Action
{
  public PendingIntent actionIntent;
  public int icon;
  public CharSequence title;
  
  public NotificationCompat$Action(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    icon = paramInt;
    title = paramCharSequence;
    actionIntent = paramPendingIntent;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.Action
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */