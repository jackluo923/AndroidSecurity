package android.support.v4.app;

import android.app.Notification;

class NotificationCompat$NotificationCompatImplBase
  implements NotificationCompat.NotificationCompatImpl
{
  public Notification build(NotificationCompat.Builder paramBuilder)
  {
    Notification localNotification = mNotification;
    localNotification.setLatestEventInfo(mContext, mContentTitle, mContentText, mContentIntent);
    if (mPriority > 0) {
      flags |= 0x80;
    }
    return localNotification;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.NotificationCompatImplBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */