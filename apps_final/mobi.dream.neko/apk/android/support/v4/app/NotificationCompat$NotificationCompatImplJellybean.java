package android.support.v4.app;

import android.app.Notification;
import java.util.ArrayList;
import java.util.Iterator;

class NotificationCompat$NotificationCompatImplJellybean
  implements NotificationCompat.NotificationCompatImpl
{
  public Notification build(NotificationCompat.Builder paramBuilder)
  {
    NotificationCompatJellybean localNotificationCompatJellybean = new NotificationCompatJellybean(mContext, mNotification, mContentTitle, mContentText, mContentInfo, mTickerView, mNumber, mContentIntent, mFullScreenIntent, mLargeIcon, mProgressMax, mProgress, mProgressIndeterminate, mUseChronometer, mPriority, mSubText);
    Iterator localIterator = mActions.iterator();
    while (localIterator.hasNext())
    {
      NotificationCompat.Action localAction = (NotificationCompat.Action)localIterator.next();
      localNotificationCompatJellybean.addAction(icon, title, actionIntent);
    }
    if (mStyle != null)
    {
      if (!(mStyle instanceof NotificationCompat.BigTextStyle)) {
        break label172;
      }
      paramBuilder = (NotificationCompat.BigTextStyle)mStyle;
      localNotificationCompatJellybean.addBigTextStyle(mBigContentTitle, mSummaryTextSet, mSummaryText, mBigText);
    }
    for (;;)
    {
      return localNotificationCompatJellybean.build();
      label172:
      if ((mStyle instanceof NotificationCompat.InboxStyle))
      {
        paramBuilder = (NotificationCompat.InboxStyle)mStyle;
        localNotificationCompatJellybean.addInboxStyle(mBigContentTitle, mSummaryTextSet, mSummaryText, mTexts);
      }
      else if ((mStyle instanceof NotificationCompat.BigPictureStyle))
      {
        paramBuilder = (NotificationCompat.BigPictureStyle)mStyle;
        localNotificationCompatJellybean.addBigPictureStyle(mBigContentTitle, mSummaryTextSet, mSummaryText, mPicture, mBigLargeIcon, mBigLargeIconSet);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.NotificationCompatImplJellybean
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */