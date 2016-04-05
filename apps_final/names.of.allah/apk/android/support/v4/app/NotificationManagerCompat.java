package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import java.util.HashSet;
import java.util.Set;

public class NotificationManagerCompat
{
  public static final String ACTION_BIND_SIDE_CHANNEL = "android.support.BIND_NOTIFICATION_SIDE_CHANNEL";
  public static final String EXTRA_USE_SIDE_CHANNEL = "android.support.useSideChannel";
  private static final NotificationManagerCompat.Impl IMPL;
  private static final String SETTING_ENABLED_NOTIFICATION_LISTENERS = "enabled_notification_listeners";
  private static final int SIDE_CHANNEL_BIND_FLAGS;
  private static final int SIDE_CHANNEL_RETRY_BASE_INTERVAL_MS = 1000;
  private static final int SIDE_CHANNEL_RETRY_MAX_COUNT = 6;
  private static final String TAG = "NotifManCompat";
  private static Set<String> sEnabledNotificationListenerPackages;
  private static String sEnabledNotificationListeners;
  private static final Object sEnabledNotificationListenersLock = new Object();
  private static final Object sLock;
  private static NotificationManagerCompat.SideChannelManager sSideChannelManager;
  private final Context mContext;
  private final NotificationManager mNotificationManager;
  
  static
  {
    sEnabledNotificationListenerPackages = new HashSet();
    sLock = new Object();
    if (Build.VERSION.SDK_INT >= 14) {
      IMPL = new NotificationManagerCompat.ImplIceCreamSandwich();
    }
    for (;;)
    {
      SIDE_CHANNEL_BIND_FLAGS = IMPL.getSideChannelBindFlags();
      return;
      if (Build.VERSION.SDK_INT >= 5) {
        IMPL = new NotificationManagerCompat.ImplEclair();
      } else {
        IMPL = new NotificationManagerCompat.ImplBase();
      }
    }
  }
  
  private NotificationManagerCompat(Context paramContext)
  {
    mContext = paramContext;
    mNotificationManager = ((NotificationManager)mContext.getSystemService("notification"));
  }
  
  public static NotificationManagerCompat from(Context paramContext)
  {
    return new NotificationManagerCompat(paramContext);
  }
  
  public static Set<String> getEnabledListenerPackages(Context paramContext)
  {
    paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "enabled_notification_listeners");
    HashSet localHashSet;
    if ((paramContext != null) && (!paramContext.equals(sEnabledNotificationListeners)))
    {
      ??? = paramContext.split(":");
      localHashSet = new HashSet(???.length);
      int j = ???.length;
      int i = 0;
      while (i < j)
      {
        ComponentName localComponentName = ComponentName.unflattenFromString(???[i]);
        if (localComponentName != null) {
          localHashSet.add(localComponentName.getPackageName());
        }
        i += 1;
      }
    }
    synchronized (sEnabledNotificationListenersLock)
    {
      sEnabledNotificationListenerPackages = localHashSet;
      sEnabledNotificationListeners = paramContext;
      return sEnabledNotificationListenerPackages;
    }
  }
  
  private void pushSideChannelQueue(NotificationManagerCompat.Task paramTask)
  {
    synchronized (sLock)
    {
      if (sSideChannelManager == null) {
        sSideChannelManager = new NotificationManagerCompat.SideChannelManager(mContext.getApplicationContext());
      }
      sSideChannelManager.queueTask(paramTask);
      return;
    }
  }
  
  private static boolean useSideChannelForNotification(Notification paramNotification)
  {
    paramNotification = NotificationCompat.getExtras(paramNotification);
    return (paramNotification != null) && (paramNotification.getBoolean("android.support.useSideChannel"));
  }
  
  public void cancel(int paramInt)
  {
    cancel(null, paramInt);
  }
  
  public void cancel(String paramString, int paramInt)
  {
    IMPL.cancelNotification(mNotificationManager, paramString, paramInt);
    pushSideChannelQueue(new NotificationManagerCompat.CancelTask(mContext.getPackageName(), paramInt, paramString));
  }
  
  public void cancelAll()
  {
    mNotificationManager.cancelAll();
    pushSideChannelQueue(new NotificationManagerCompat.CancelTask(mContext.getPackageName()));
  }
  
  public void notify(int paramInt, Notification paramNotification)
  {
    notify(null, paramInt, paramNotification);
  }
  
  public void notify(String paramString, int paramInt, Notification paramNotification)
  {
    if (useSideChannelForNotification(paramNotification))
    {
      pushSideChannelQueue(new NotificationManagerCompat.NotifyTask(mContext.getPackageName(), paramInt, paramString, paramNotification));
      return;
    }
    IMPL.postNotification(mNotificationManager, paramString, paramInt, paramNotification);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationManagerCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */