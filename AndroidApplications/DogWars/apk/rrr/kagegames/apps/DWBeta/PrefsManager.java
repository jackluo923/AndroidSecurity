package kagegames.apps.DWBeta;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.Date;

class PrefsManager
{
  public static final String PREFS_KEY_BOOL_IS_OWNER_DOG_CREATED = "b_is_created";
  public static final String PREFS_KEY_BOOL_IS_SOUND_ON = "b_is_sound_on";
  public static final String PREFS_KEY_BOOL_IS_VIBRATE_ON = "b_is_vibrate_on";
  public static final String PREFS_KEY_DOG_ID = "dog_id";
  public static final String PREFS_KEY_OWNER_ID = "owner_id";
  String PREFS_PREFIX;
  private boolean bIsInit;
  private boolean b_is_sound_on;
  private boolean b_is_vibrate_on;
  private Date mLastRun;
  private SharedPreferences mPrefs;
  private Date mStartDate;
  
  PrefsManager()
  {
    boolean bool = false;
    bIsInit = bool;
    LoadCachedPrefs();
  }
  
  private void LoadCachedPrefs()
  {
    boolean bool = false;
    int k = 1;
    Object localObject1 = mPrefs;
    if (localObject1 == null)
    {
      localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getPackageName();
      PREFS_PREFIX = ((String)localObject1);
      localObject1 = DWApplication.getInstance();
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getPackageName();
      localObject1 = ((DWApplication)localObject1).getSharedPreferences((String)localObject3, k);
      mPrefs = ((SharedPreferences)localObject1);
    }
    String str1 = "true";
    localObject1 = mPrefs;
    Object localObject3 = new java/lang/StringBuilder;
    String str3 = PREFS_PREFIX;
    str3 = String.valueOf(str3);
    ((StringBuilder)localObject3).<init>(str3);
    str3 = "b_is_sound_on";
    localObject3 = ((StringBuilder)localObject3).append(str3);
    localObject3 = ((StringBuilder)localObject3).toString();
    String str2 = ((SharedPreferences)localObject1).getString((String)localObject3, str1);
    localObject1 = "true";
    int i = str2.compareTo((String)localObject1);
    if (i == 0)
    {
      b_is_sound_on = k;
      Object localObject2 = mPrefs;
      localObject3 = new java/lang/StringBuilder;
      str3 = PREFS_PREFIX;
      str3 = String.valueOf(str3);
      ((StringBuilder)localObject3).<init>(str3);
      str3 = "b_is_vibrate_on";
      localObject3 = ((StringBuilder)localObject3).append(str3);
      localObject3 = ((StringBuilder)localObject3).toString();
      str2 = ((SharedPreferences)localObject2).getString((String)localObject3, str1);
      localObject2 = "true";
      int j = str2.compareTo((String)localObject2);
      if (j != 0) {
        break label231;
      }
    }
    label231:
    for (b_is_vibrate_on = k;; b_is_vibrate_on = bool)
    {
      return;
      b_is_sound_on = bool;
      break;
    }
  }
  
  public boolean isOwnerDogCreated()
  {
    int k = 1;
    Object localObject1 = mPrefs;
    if (localObject1 == null)
    {
      localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getPackageName();
      PREFS_PREFIX = ((String)localObject1);
      localObject1 = DWApplication.getInstance();
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getPackageName();
      localObject1 = ((DWApplication)localObject1).getSharedPreferences((String)localObject2, k);
      mPrefs = ((SharedPreferences)localObject1);
    }
    String str1 = "false";
    localObject1 = mPrefs;
    Object localObject2 = new java/lang/StringBuilder;
    String str3 = PREFS_PREFIX;
    str3 = String.valueOf(str3);
    ((StringBuilder)localObject2).<init>(str3);
    str3 = "b_is_created";
    localObject2 = ((StringBuilder)localObject2).append(str3);
    localObject2 = ((StringBuilder)localObject2).toString();
    String str2 = ((SharedPreferences)localObject1).getString((String)localObject2, str1);
    localObject1 = "true";
    int i = str2.compareTo((String)localObject1);
    if (i == 0) {}
    int j;
    for (i = k;; j = 0) {
      return i;
    }
  }
  
  public boolean isSoundOn()
  {
    boolean bool = b_is_sound_on;
    return bool;
  }
  
  public boolean isVibrateOn()
  {
    boolean bool = b_is_vibrate_on;
    return bool;
  }
  
  public boolean loadOwnerAndDogIDs()
  {
    int i = 1;
    boolean bool3 = false;
    Object localObject1 = mPrefs;
    if (localObject1 == null)
    {
      localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getPackageName();
      PREFS_PREFIX = ((String)localObject1);
      localObject1 = DWApplication.getInstance();
      localObject3 = DWApplication.getInstance();
      localObject3 = ((DWApplication)localObject3).getPackageName();
      localObject1 = ((DWApplication)localObject1).getSharedPreferences((String)localObject3, i);
      mPrefs = ((SharedPreferences)localObject1);
    }
    long l2 = 4294967293L;
    localObject1 = mPrefs;
    Object localObject3 = new java/lang/StringBuilder;
    String str = PREFS_PREFIX;
    str = String.valueOf(str);
    ((StringBuilder)localObject3).<init>(str);
    str = "owner_id";
    localObject3 = ((StringBuilder)localObject3).append(str);
    localObject3 = ((StringBuilder)localObject3).toString();
    long l3 = ((SharedPreferences)localObject1).getLong((String)localObject3, l2);
    boolean bool1 = l3 < l2;
    if (!bool1) {
      bool1 = bool3;
    }
    for (;;)
    {
      return bool1;
      SharedPreferences localSharedPreferences = mPrefs;
      localObject3 = new java/lang/StringBuilder;
      str = PREFS_PREFIX;
      str = String.valueOf(str);
      ((StringBuilder)localObject3).<init>(str);
      str = "dog_id";
      localObject3 = ((StringBuilder)localObject3).append(str);
      localObject3 = ((StringBuilder)localObject3).toString();
      long l1 = localSharedPreferences.getLong((String)localObject3, l2);
      boolean bool2 = l1 < l2;
      if (!bool2)
      {
        bool2 = bool3;
      }
      else
      {
        Object localObject2 = DWApplication.getInstance();
        localObject2 = ((DWApplication)localObject2).getDWGameState();
        ((DWGameState)localObject2).setIDsFromPrefs(l3, l1);
        localObject2 = Long.valueOf(l3);
        localObject3 = Long.valueOf(l1);
        saveOwnerAndDogIDs((Long)localObject2, (Long)localObject3);
        localObject2 = i;
      }
    }
  }
  
  public void saveOwnerAndDogIDs(Long paramLong1, Long paramLong2)
  {
    Object localObject1 = mPrefs;
    if (localObject1 == null)
    {
      localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getPackageName();
      PREFS_PREFIX = ((String)localObject1);
      localObject1 = DWApplication.getInstance();
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getPackageName();
      int i = 1;
      localObject1 = ((DWApplication)localObject1).getSharedPreferences((String)localObject2, i);
      mPrefs = ((SharedPreferences)localObject1);
    }
    localObject1 = mPrefs;
    SharedPreferences.Editor localEditor = ((SharedPreferences)localObject1).edit();
    String str1 = "";
    localObject1 = new java/lang/StringBuilder;
    Object localObject2 = PREFS_PREFIX;
    localObject2 = String.valueOf(localObject2);
    ((StringBuilder)localObject1).<init>((String)localObject2);
    localObject2 = "owner_id";
    localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
    localObject1 = ((StringBuilder)localObject1).toString();
    long l1 = paramLong1.longValue();
    localEditor.putLong((String)localObject1, l1);
    localObject1 = new java/lang/StringBuilder;
    String str2 = PREFS_PREFIX;
    str2 = String.valueOf(str2);
    ((StringBuilder)localObject1).<init>(str2);
    str2 = "dog_id";
    localObject1 = ((StringBuilder)localObject1).append(str2);
    localObject1 = ((StringBuilder)localObject1).toString();
    long l2 = paramLong2.longValue();
    localEditor.putLong((String)localObject1, l2);
    localObject1 = new java/lang/StringBuilder;
    String str3 = PREFS_PREFIX;
    str3 = String.valueOf(str3);
    ((StringBuilder)localObject1).<init>(str3);
    str3 = "b_is_created";
    localObject1 = ((StringBuilder)localObject1).append(str3);
    localObject1 = ((StringBuilder)localObject1).toString();
    str3 = "true";
    localEditor.putString((String)localObject1, str3);
    localEditor.commit();
  }
  
  public void setSoundOn(boolean paramBoolean)
  {
    Object localObject1 = mPrefs;
    Object localObject2;
    if (localObject1 == null)
    {
      localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getPackageName();
      PREFS_PREFIX = ((String)localObject1);
      localObject1 = DWApplication.getInstance();
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getPackageName();
      int i = 1;
      localObject1 = ((DWApplication)localObject1).getSharedPreferences((String)localObject2, i);
      mPrefs = ((SharedPreferences)localObject1);
    }
    localObject1 = mPrefs;
    SharedPreferences.Editor localEditor = ((SharedPreferences)localObject1).edit();
    if (paramBoolean) {}
    for (String str = "true";; str = "false")
    {
      localObject1 = new java/lang/StringBuilder;
      localObject2 = PREFS_PREFIX;
      localObject2 = String.valueOf(localObject2);
      ((StringBuilder)localObject1).<init>((String)localObject2);
      localObject2 = "b_is_sound_on";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject1 = ((StringBuilder)localObject1).toString();
      localEditor.putString((String)localObject1, str);
      localEditor.commit();
      b_is_sound_on = paramBoolean;
      return;
    }
  }
  
  public void setVibrateOn(boolean paramBoolean)
  {
    Object localObject1 = mPrefs;
    Object localObject2;
    if (localObject1 == null)
    {
      localObject1 = DWApplication.getInstance();
      localObject1 = ((DWApplication)localObject1).getPackageName();
      PREFS_PREFIX = ((String)localObject1);
      localObject1 = DWApplication.getInstance();
      localObject2 = DWApplication.getInstance();
      localObject2 = ((DWApplication)localObject2).getPackageName();
      int i = 1;
      localObject1 = ((DWApplication)localObject1).getSharedPreferences((String)localObject2, i);
      mPrefs = ((SharedPreferences)localObject1);
    }
    localObject1 = mPrefs;
    SharedPreferences.Editor localEditor = ((SharedPreferences)localObject1).edit();
    if (paramBoolean) {}
    for (String str = "true";; str = "false")
    {
      localObject1 = new java/lang/StringBuilder;
      localObject2 = PREFS_PREFIX;
      localObject2 = String.valueOf(localObject2);
      ((StringBuilder)localObject1).<init>((String)localObject2);
      localObject2 = "b_is_vibrate_on";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject1 = ((StringBuilder)localObject1).toString();
      localEditor.putString((String)localObject1, str);
      localEditor.commit();
      b_is_vibrate_on = paramBoolean;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.PrefsManager
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */