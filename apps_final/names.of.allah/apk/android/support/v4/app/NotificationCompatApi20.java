package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.Action;
import android.app.Notification.Action.Builder;
import android.os.Parcelable;
import java.util.ArrayList;

class NotificationCompatApi20
{
  public static NotificationCompatBase.Action getAction(Notification paramNotification, int paramInt, NotificationCompatBase.Action.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    return getActionCompatFromAction(actions[paramInt], paramFactory, paramFactory1);
  }
  
  private static NotificationCompatBase.Action getActionCompatFromAction(Notification.Action paramAction, NotificationCompatBase.Action.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    paramFactory1 = RemoteInputCompatApi20.toCompat(paramAction.getRemoteInputs(), paramFactory1);
    return paramFactory.build(icon, title, actionIntent, paramAction.getExtras(), paramFactory1);
  }
  
  private static Notification.Action getActionFromActionCompat(NotificationCompatBase.Action paramAction)
  {
    Notification.Action.Builder localBuilder = new Notification.Action.Builder(paramAction.getIcon(), paramAction.getTitle(), paramAction.getActionIntent()).addExtras(paramAction.getExtras());
    paramAction = paramAction.getRemoteInputs();
    if (paramAction != null)
    {
      paramAction = RemoteInputCompatApi20.fromCompat(paramAction);
      int j = paramAction.length;
      int i = 0;
      while (i < j)
      {
        localBuilder.addRemoteInput(paramAction[i]);
        i += 1;
      }
    }
    return localBuilder.build();
  }
  
  public static NotificationCompatBase.Action[] getActionsFromParcelableArrayList(ArrayList<Parcelable> paramArrayList, NotificationCompatBase.Action.Factory paramFactory, RemoteInputCompatBase.RemoteInput.Factory paramFactory1)
  {
    if (paramArrayList == null) {
      return null;
    }
    NotificationCompatBase.Action[] arrayOfAction = paramFactory.newArray(paramArrayList.size());
    int i = 0;
    while (i < arrayOfAction.length)
    {
      arrayOfAction[i] = getActionCompatFromAction((Notification.Action)paramArrayList.get(i), paramFactory, paramFactory1);
      i += 1;
    }
    return arrayOfAction;
  }
  
  public static String getGroup(Notification paramNotification)
  {
    return paramNotification.getGroup();
  }
  
  public static boolean getLocalOnly(Notification paramNotification)
  {
    return (flags & 0x100) != 0;
  }
  
  public static ArrayList<Parcelable> getParcelableArrayListForActions(NotificationCompatBase.Action[] paramArrayOfAction)
  {
    Object localObject;
    if (paramArrayOfAction == null)
    {
      localObject = null;
      return (ArrayList<Parcelable>)localObject;
    }
    ArrayList localArrayList = new ArrayList(paramArrayOfAction.length);
    int j = paramArrayOfAction.length;
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(getActionFromActionCompat(paramArrayOfAction[i]));
      i += 1;
    }
  }
  
  public static String getSortKey(Notification paramNotification)
  {
    return paramNotification.getSortKey();
  }
  
  public static boolean isGroupSummary(Notification paramNotification)
  {
    return (flags & 0x200) != 0;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompatApi20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */