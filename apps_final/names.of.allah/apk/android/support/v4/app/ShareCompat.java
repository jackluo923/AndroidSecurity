package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;
import android.view.Menu;
import android.view.MenuItem;

public class ShareCompat
{
  public static final String EXTRA_CALLING_ACTIVITY = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
  public static final String EXTRA_CALLING_PACKAGE = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
  private static ShareCompat.ShareCompatImpl IMPL = new ShareCompat.ShareCompatImplBase();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      IMPL = new ShareCompat.ShareCompatImplJB();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new ShareCompat.ShareCompatImplICS();
      return;
    }
  }
  
  public static void configureMenuItem(Menu paramMenu, int paramInt, ShareCompat.IntentBuilder paramIntentBuilder)
  {
    paramMenu = paramMenu.findItem(paramInt);
    if (paramMenu == null) {
      throw new IllegalArgumentException("Could not find menu item with id " + paramInt + " in the supplied menu");
    }
    configureMenuItem(paramMenu, paramIntentBuilder);
  }
  
  public static void configureMenuItem(MenuItem paramMenuItem, ShareCompat.IntentBuilder paramIntentBuilder)
  {
    IMPL.configureMenuItem(paramMenuItem, paramIntentBuilder);
  }
  
  public static ComponentName getCallingActivity(Activity paramActivity)
  {
    ComponentName localComponentName2 = paramActivity.getCallingActivity();
    ComponentName localComponentName1 = localComponentName2;
    if (localComponentName2 == null) {
      localComponentName1 = (ComponentName)paramActivity.getIntent().getParcelableExtra("android.support.v4.app.EXTRA_CALLING_ACTIVITY");
    }
    return localComponentName1;
  }
  
  public static String getCallingPackage(Activity paramActivity)
  {
    String str2 = paramActivity.getCallingPackage();
    String str1 = str2;
    if (str2 == null) {
      str1 = paramActivity.getIntent().getStringExtra("android.support.v4.app.EXTRA_CALLING_PACKAGE");
    }
    return str1;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ShareCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */