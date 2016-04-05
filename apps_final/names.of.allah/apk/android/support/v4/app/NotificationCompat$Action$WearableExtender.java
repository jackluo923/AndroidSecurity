package android.support.v4.app;

import android.os.Bundle;

public final class NotificationCompat$Action$WearableExtender
  implements NotificationCompat.Action.Extender
{
  private static final int DEFAULT_FLAGS = 1;
  private static final String EXTRA_WEARABLE_EXTENSIONS = "android.wearable.EXTENSIONS";
  private static final int FLAG_AVAILABLE_OFFLINE = 1;
  private static final String KEY_FLAGS = "flags";
  private int mFlags = 1;
  
  public NotificationCompat$Action$WearableExtender() {}
  
  public NotificationCompat$Action$WearableExtender(NotificationCompat.Action paramAction)
  {
    paramAction = paramAction.getExtras().getBundle("android.wearable.EXTENSIONS");
    if (paramAction != null) {
      mFlags = paramAction.getInt("flags", 1);
    }
  }
  
  private void setFlag(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      mFlags |= paramInt;
      return;
    }
    mFlags &= (paramInt ^ 0xFFFFFFFF);
  }
  
  public final WearableExtender clone()
  {
    WearableExtender localWearableExtender = new WearableExtender();
    mFlags = mFlags;
    return localWearableExtender;
  }
  
  public final NotificationCompat.Action.Builder extend(NotificationCompat.Action.Builder paramBuilder)
  {
    Bundle localBundle = new Bundle();
    if (mFlags != 1) {
      localBundle.putInt("flags", mFlags);
    }
    paramBuilder.getExtras().putBundle("android.wearable.EXTENSIONS", localBundle);
    return paramBuilder;
  }
  
  public final boolean isAvailableOffline()
  {
    return (mFlags & 0x1) != 0;
  }
  
  public final WearableExtender setAvailableOffline(boolean paramBoolean)
  {
    setFlag(1, paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.NotificationCompat.Action.WearableExtender
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */