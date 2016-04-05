package mobi.monaca.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;
import java.util.UUID;

public class MonacaDevice
{
  public static String getDeviceId(Context paramContext)
  {
    String str2 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    String str1 = str2;
    if (str2 == null) {
      str1 = getIDUsingUUID(paramContext);
    }
    return SHA1Util.toHashedString(str1);
  }
  
  private static String getIDUsingUUID(Context paramContext)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(paramContext);
    String str = localSharedPreferences.getString("device_id", null);
    paramContext = str;
    if (str == null)
    {
      paramContext = UUID.randomUUID().toString();
      localSharedPreferences.edit().putString("device_id", paramContext).commit();
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.utils.MonacaDevice
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */