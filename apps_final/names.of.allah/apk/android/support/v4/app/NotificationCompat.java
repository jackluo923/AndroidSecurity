package android.support.v4.app;

import android.app.Notification;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Iterator;

public class NotificationCompat
{
  public static final int DEFAULT_ALL = -1;
  public static final int DEFAULT_LIGHTS = 4;
  public static final int DEFAULT_SOUND = 1;
  public static final int DEFAULT_VIBRATE = 2;
  public static final String EXTRA_INFO_TEXT = "android.infoText";
  public static final String EXTRA_LARGE_ICON = "android.largeIcon";
  public static final String EXTRA_LARGE_ICON_BIG = "android.largeIcon.big";
  public static final String EXTRA_PEOPLE = "android.people";
  public static final String EXTRA_PICTURE = "android.picture";
  public static final String EXTRA_PROGRESS = "android.progress";
  public static final String EXTRA_PROGRESS_INDETERMINATE = "android.progressIndeterminate";
  public static final String EXTRA_PROGRESS_MAX = "android.progressMax";
  public static final String EXTRA_SHOW_CHRONOMETER = "android.showChronometer";
  public static final String EXTRA_SMALL_ICON = "android.icon";
  public static final String EXTRA_SUB_TEXT = "android.subText";
  public static final String EXTRA_SUMMARY_TEXT = "android.summaryText";
  public static final String EXTRA_TEXT = "android.text";
  public static final String EXTRA_TEXT_LINES = "android.textLines";
  public static final String EXTRA_TITLE = "android.title";
  public static final String EXTRA_TITLE_BIG = "android.title.big";
  public static final int FLAG_AUTO_CANCEL = 16;
  public static final int FLAG_FOREGROUND_SERVICE = 64;
  public static final int FLAG_GROUP_SUMMARY = 512;
  public static final int FLAG_HIGH_PRIORITY = 128;
  public static final int FLAG_INSISTENT = 4;
  public static final int FLAG_LOCAL_ONLY = 256;
  public static final int FLAG_NO_CLEAR = 32;
  public static final int FLAG_ONGOING_EVENT = 2;
  public static final int FLAG_ONLY_ALERT_ONCE = 8;
  public static final int FLAG_SHOW_LIGHTS = 1;
  private static final NotificationCompat.NotificationCompatImpl IMPL = new NotificationCompat.NotificationCompatImplBase();
  public static final int PRIORITY_DEFAULT = 0;
  public static final int PRIORITY_HIGH = 1;
  public static final int PRIORITY_LOW = -1;
  public static final int PRIORITY_MAX = 2;
  public static final int PRIORITY_MIN = -2;
  public static final int STREAM_DEFAULT = -1;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 20)
    {
      IMPL = new NotificationCompat.NotificationCompatImplApi20();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      IMPL = new NotificationCompat.NotificationCompatImplKitKat();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      IMPL = new NotificationCompat.NotificationCompatImplJellybean();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new NotificationCompat.NotificationCompatImplIceCreamSandwich();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      IMPL = new NotificationCompat.NotificationCompatImplHoneycomb();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      IMPL = new NotificationCompat.NotificationCompatImplGingerbread();
      return;
    }
  }
  
  private static void addActionsToBuilder(NotificationBuilderWithActions paramNotificationBuilderWithActions, ArrayList<NotificationCompat.Action> paramArrayList)
  {
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext()) {
      paramNotificationBuilderWithActions.addAction((NotificationCompat.Action)paramArrayList.next());
    }
  }
  
  private static void addStyleToBuilderJellybean(NotificationBuilderWithBuilderAccessor paramNotificationBuilderWithBuilderAccessor, NotificationCompat.Style paramStyle)
  {
    if (paramStyle != null)
    {
      if (!(paramStyle instanceof NotificationCompat.BigTextStyle)) {
        break label37;
      }
      paramStyle = (NotificationCompat.BigTextStyle)paramStyle;
      NotificationCompatJellybean.addBigTextStyle(paramNotificationBuilderWithBuilderAccessor, mBigContentTitle, mSummaryTextSet, mSummaryText, mBigText);
    }
    label37:
    do
    {
      return;
      if ((paramStyle instanceof NotificationCompat.InboxStyle))
      {
        paramStyle = (NotificationCompat.InboxStyle)paramStyle;
        NotificationCompatJellybean.addInboxStyle(paramNotificationBuilderWithBuilderAccessor, mBigContentTitle, mSummaryTextSet, mSummaryText, mTexts);
        return;
      }
    } while (!(paramStyle instanceof NotificationCompat.BigPictureStyle));
    paramStyle = (NotificationCompat.BigPictureStyle)paramStyle;
    NotificationCompatJellybean.addBigPictureStyle(paramNotificationBuilderWithBuilderAccessor, mBigContentTitle, mSummaryTextSet, mSummaryText, mPicture, mBigLargeIcon, mBigLargeIconSet);
  }
  
  public static NotificationCompat.Action getAction(Notification paramNotification, int paramInt)
  {
    return IMPL.getAction(paramNotification, paramInt);
  }
  
  public static int getActionCount(Notification paramNotification)
  {
    return IMPL.getActionCount(paramNotification);
  }
  
  public static Bundle getExtras(Notification paramNotification)
  {
    return IMPL.getExtras(paramNotification);
  }
  
  public static String getGroup(Notification paramNotification)
  {
    return IMPL.getGroup(paramNotification);
  }
  
  public static boolean getLocalOnly(Notification paramNotification)
  {
    return IMPL.getLocalOnly(paramNotification);
  }
  
  private static Notification[] getNotificationArrayFromBundle(Bundle paramBundle, String paramString)
  {
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray(paramString);
    if (((arrayOfParcelable instanceof Notification[])) || (arrayOfParcelable == null)) {
      return (Notification[])arrayOfParcelable;
    }
    Notification[] arrayOfNotification = new Notification[arrayOfParcelable.length];
    int i = 0;
    while (i < arrayOfParcelable.length)
    {
      arrayOfNotification[i] = ((Notification)arrayOfParcelable[i]);
      i += 1;
    }
    paramBundle.putParcelableArray(paramString, arrayOfNotification);
    return arrayOfNotification;
  }
  
  public static String getSortKey(Notification paramNotification)
  {
    return IMPL.getSortKey(paramNotification);
  }
  
  public static boolean isGroupSummary(Notification paramNotification)
  {
    return IMPL.isGroupSummary(paramNotification);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */