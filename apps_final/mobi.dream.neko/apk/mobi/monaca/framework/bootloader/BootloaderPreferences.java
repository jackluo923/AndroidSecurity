package mobi.monaca.framework.bootloader;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class BootloaderPreferences
{
  protected static final String APP_VERSION_CODE_KEY = mobi.monaca.framework.UserIdentifier.identifier[6];
  protected static final String BOOTLOADER_PREFERENCES_NAME = mobi.monaca.framework.UserIdentifier.identifier[5];
  protected static final String KEY_LAST_UPDATE = mobi.monaca.framework.UserIdentifier.identifier[7];
  protected SharedPreferences bootloaderPreferences;
  protected Context context;
  
  public BootloaderPreferences(Context paramContext)
  {
    context = paramContext;
    bootloaderPreferences = paramContext.getSharedPreferences(BOOTLOADER_PREFERENCES_NAME, 0);
  }
  
  private long getCurrentPackageLastUpdated()
  {
    try
    {
      long l = context.getPackageManager().getPackageInfo(context.getPackageName(), 128).lastUpdateTime;
      return l;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }
  
  public void clear()
  {
    bootloaderPreferences.edit().clear().commit();
  }
  
  public String getAppVersionCode()
  {
    return bootloaderPreferences.getString(APP_VERSION_CODE_KEY, "");
  }
  
  public boolean isAppPackageUpdated()
  {
    long l = bootloaderPreferences.getLong(KEY_LAST_UPDATE, 0L);
    return getCurrentPackageLastUpdated() != l;
  }
  
  public void saveAppVersionCode(String paramString)
  {
    bootloaderPreferences.edit().putString(APP_VERSION_CODE_KEY, "" + paramString).commit();
  }
  
  public void updateLastPackageUpdatedTime()
  {
    bootloaderPreferences.edit().putLong(KEY_LAST_UPDATE, getCurrentPackageLastUpdated()).commit();
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.bootloader.BootloaderPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */