package android.support.v4.app;

import android.app.Notification;

class NotificationCompat$NotificationCompatImplIceCreamSandwich
  implements NotificationCompat.NotificationCompatImpl
{
  public Notification build(NotificationCompat.Builder paramBuilder)
  {
    return NotificationCompatIceCreamSandwich.add(mContext, mNotification, mContentTitle, mContentText, mContentInfo, mTickerView, mNumber, mContentIntent, mFullScreenIntent, mLargeIcon, mProgressMax, mProgress, mProgressIndeterminate);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.NotificationCompatImplIceCreamSandwich
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */