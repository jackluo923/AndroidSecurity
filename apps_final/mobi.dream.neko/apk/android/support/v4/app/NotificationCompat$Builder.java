package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.widget.RemoteViews;
import java.util.ArrayList;

public class NotificationCompat$Builder
{
  ArrayList<NotificationCompat.Action> mActions = new ArrayList();
  CharSequence mContentInfo;
  PendingIntent mContentIntent;
  CharSequence mContentText;
  CharSequence mContentTitle;
  Context mContext;
  PendingIntent mFullScreenIntent;
  Bitmap mLargeIcon;
  Notification mNotification = new Notification();
  int mNumber;
  int mPriority;
  int mProgress;
  boolean mProgressIndeterminate;
  int mProgressMax;
  NotificationCompat.Style mStyle;
  CharSequence mSubText;
  RemoteViews mTickerView;
  boolean mUseChronometer;
  
  public NotificationCompat$Builder(Context paramContext)
  {
    mContext = paramContext;
    mNotification.when = System.currentTimeMillis();
    mNotification.audioStreamType = -1;
    mPriority = 0;
  }
  
  private void setFlag(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      localNotification = mNotification;
      flags |= paramInt;
      return;
    }
    Notification localNotification = mNotification;
    flags &= (paramInt ^ 0xFFFFFFFF);
  }
  
  public Builder addAction(int paramInt, CharSequence paramCharSequence, PendingIntent paramPendingIntent)
  {
    mActions.add(new NotificationCompat.Action(paramInt, paramCharSequence, paramPendingIntent));
    return this;
  }
  
  public Notification build()
  {
    return NotificationCompat.access$000().build(this);
  }
  
  @Deprecated
  public Notification getNotification()
  {
    return NotificationCompat.access$000().build(this);
  }
  
  public Builder setAutoCancel(boolean paramBoolean)
  {
    setFlag(16, paramBoolean);
    return this;
  }
  
  public Builder setContent(RemoteViews paramRemoteViews)
  {
    mNotification.contentView = paramRemoteViews;
    return this;
  }
  
  public Builder setContentInfo(CharSequence paramCharSequence)
  {
    mContentInfo = paramCharSequence;
    return this;
  }
  
  public Builder setContentIntent(PendingIntent paramPendingIntent)
  {
    mContentIntent = paramPendingIntent;
    return this;
  }
  
  public Builder setContentText(CharSequence paramCharSequence)
  {
    mContentText = paramCharSequence;
    return this;
  }
  
  public Builder setContentTitle(CharSequence paramCharSequence)
  {
    mContentTitle = paramCharSequence;
    return this;
  }
  
  public Builder setDefaults(int paramInt)
  {
    mNotification.defaults = paramInt;
    if ((paramInt & 0x4) != 0)
    {
      Notification localNotification = mNotification;
      flags |= 0x1;
    }
    return this;
  }
  
  public Builder setDeleteIntent(PendingIntent paramPendingIntent)
  {
    mNotification.deleteIntent = paramPendingIntent;
    return this;
  }
  
  public Builder setFullScreenIntent(PendingIntent paramPendingIntent, boolean paramBoolean)
  {
    mFullScreenIntent = paramPendingIntent;
    setFlag(128, paramBoolean);
    return this;
  }
  
  public Builder setLargeIcon(Bitmap paramBitmap)
  {
    mLargeIcon = paramBitmap;
    return this;
  }
  
  public Builder setLights(int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 1;
    mNotification.ledARGB = paramInt1;
    mNotification.ledOnMS = paramInt2;
    mNotification.ledOffMS = paramInt3;
    Notification localNotification;
    if ((mNotification.ledOnMS != 0) && (mNotification.ledOffMS != 0))
    {
      paramInt1 = 1;
      localNotification = mNotification;
      paramInt2 = mNotification.flags;
      if (paramInt1 == 0) {
        break label88;
      }
    }
    label88:
    for (paramInt1 = i;; paramInt1 = 0)
    {
      flags = (paramInt1 | paramInt2 & 0xFFFFFFFE);
      return this;
      paramInt1 = 0;
      break;
    }
  }
  
  public Builder setNumber(int paramInt)
  {
    mNumber = paramInt;
    return this;
  }
  
  public Builder setOngoing(boolean paramBoolean)
  {
    setFlag(2, paramBoolean);
    return this;
  }
  
  public Builder setOnlyAlertOnce(boolean paramBoolean)
  {
    setFlag(8, paramBoolean);
    return this;
  }
  
  public Builder setPriority(int paramInt)
  {
    mPriority = paramInt;
    return this;
  }
  
  public Builder setProgress(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    mProgressMax = paramInt1;
    mProgress = paramInt2;
    mProgressIndeterminate = paramBoolean;
    return this;
  }
  
  public Builder setSmallIcon(int paramInt)
  {
    mNotification.icon = paramInt;
    return this;
  }
  
  public Builder setSmallIcon(int paramInt1, int paramInt2)
  {
    mNotification.icon = paramInt1;
    mNotification.iconLevel = paramInt2;
    return this;
  }
  
  public Builder setSound(Uri paramUri)
  {
    mNotification.sound = paramUri;
    mNotification.audioStreamType = -1;
    return this;
  }
  
  public Builder setSound(Uri paramUri, int paramInt)
  {
    mNotification.sound = paramUri;
    mNotification.audioStreamType = paramInt;
    return this;
  }
  
  public Builder setStyle(NotificationCompat.Style paramStyle)
  {
    if (mStyle != paramStyle)
    {
      mStyle = paramStyle;
      if (mStyle != null) {
        mStyle.setBuilder(this);
      }
    }
    return this;
  }
  
  public Builder setSubText(CharSequence paramCharSequence)
  {
    mSubText = paramCharSequence;
    return this;
  }
  
  public Builder setTicker(CharSequence paramCharSequence)
  {
    mNotification.tickerText = paramCharSequence;
    return this;
  }
  
  public Builder setTicker(CharSequence paramCharSequence, RemoteViews paramRemoteViews)
  {
    mNotification.tickerText = paramCharSequence;
    mTickerView = paramRemoteViews;
    return this;
  }
  
  public Builder setUsesChronometer(boolean paramBoolean)
  {
    mUseChronometer = paramBoolean;
    return this;
  }
  
  public Builder setVibrate(long[] paramArrayOfLong)
  {
    mNotification.vibrate = paramArrayOfLong;
    return this;
  }
  
  public Builder setWhen(long paramLong)
  {
    mNotification.when = paramLong;
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */