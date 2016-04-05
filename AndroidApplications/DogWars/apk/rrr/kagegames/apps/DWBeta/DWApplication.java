package kagegames.apps.DWBeta;

import android.app.Application;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Vibrator;
import android.provider.Settings.Secure;
import android.util.Log;
import org.apache.http.HttpVersion;
import org.apache.http.ProtocolVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpProtocolParams;

public class DWApplication
  extends Application
{
  private static final int ANDROID_ID_LENGTH = 16;
  static int MAX_NAME_LENGTH = 0;
  static int MAX_SHOUT_LENGTH = 0;
  private static final String PACKAGE_NAME_LITE = "kagegames.apps.DWBeta";
  public static final String PITBOSS_OWNER_NAME = "THE PITBOSS";
  public static final int REQUEST_CODE_FIGHT = 7;
  public static final int REQUEST_CODE_FORCE_UPDATE = 8;
  public static final int REQUEST_CODE_INTRO_ACTIVITY = 3;
  public static final int REQUEST_CODE_NAME_OWNER_DOG = 4;
  public static final int REQUEST_CODE_NEW_DOG = 2;
  public static final int REQUEST_CODE_NEW_OWNER = 1;
  public static final int REQUEST_CODE_START_FIGHT = 6;
  public static final String SCOREBOARD_URL = "http://kagegames.com/dw/scoreboard";
  public static final int SCORE_BITING = 1;
  private static final String TAG = "DWApplication";
  static int TAG_LENGTH = 0;
  private static DWApplication instance;
  private static Resources mAppResources;
  public Typeface DW_Typeface;
  final String FIRST_RUN;
  private String _theAndroidId;
  private DWGameState _theDWGameState;
  private PollManager _thePollManager;
  private PrefsManager _thePrefsManager;
  private ServerRequestsMgr _theServerRequestsMgr;
  private SoundsManager _theSoundsManager;
  private String _theVersionCode;
  private HttpClient mHttpclient;
  private boolean mIsInInterrupt;
  SharedPreferences mPrefs;
  
  static
  {
    DWApplication localDWApplication = null;
    int i = 18;
    MAX_NAME_LENGTH = i;
    i = 200;
    MAX_SHOUT_LENGTH = i;
    i = 6;
    TAG_LENGTH = i;
    instance = localDWApplication;
    mAppResources = localDWApplication;
  }
  
  public DWApplication()
  {
    String str = "FIRST_RUN";
    FIRST_RUN = str;
    boolean bool = false;
    mIsInInterrupt = bool;
  }
  
  public boolean IsInInterrupt()
  {
    boolean bool = mIsInInterrupt;
    return bool;
  }
  
  public void LaunchMarketplace(String paramString)
  {
    int i = 0;
    Intent localIntent = new android/content/Intent;
    String str = "android.intent.action.VIEW";
    Uri localUri = Uri.parse(paramString);
    localIntent.<init>(str, localUri);
    startActivity(localIntent);
  }
  
  private static String PadAndroidId(String paramString, int paramInt)
  {
    int k = paramString.length();
    int j = k % paramInt;
    int i = paramInt - j;
    StringBuffer localStringBuffer;
    if ((i > 0) && (i < paramInt))
    {
      localStringBuffer = new java/lang/StringBuffer;
      k = paramString.length();
      k += i;
      localStringBuffer.<init>(k);
      k = 0;
      localStringBuffer.insert(k, paramString);
      i = paramInt - j;
      if (i > 0) {}
    }
    for (String str = localStringBuffer.toString();; str = paramString)
    {
      return str;
      str = "0";
      localStringBuffer.append(str);
      i += -1;
      break;
    }
  }
  
  public void Vibrate(int paramInt)
  {
    Object localObject2 = getInstance();
    localObject2 = ((DWApplication)localObject2).getPrefsManager();
    boolean bool = ((PrefsManager)localObject2).isVibrateOn();
    if (bool)
    {
      String str = "vibrator";
      Object localObject1 = getSystemService(str);
      localObject1 = (Vibrator)localObject1;
      long l = paramInt;
      ((Vibrator)localObject1).vibrate(l);
    }
  }
  
  private static void checkInstance()
  {
    Object localObject = instance;
    if (localObject == null)
    {
      localObject = new java/lang/IllegalStateException;
      String str = "Application has not been created";
      ((IllegalStateException)localObject).<init>(str);
      throw ((Throwable)localObject);
    }
  }
  
  private HttpClient createHttpClient()
  {
    Object localObject1 = "DWApplication";
    String str = "create http client";
    Log.d((String)localObject1, str);
    BasicHttpParams localBasicHttpParams = new org/apache/http/params/BasicHttpParams;
    localBasicHttpParams.<init>();
    localObject1 = HttpVersion.HTTP_1_1;
    HttpProtocolParams.setVersion(localBasicHttpParams, (ProtocolVersion)localObject1);
    localObject1 = "ISO-8859-1";
    HttpProtocolParams.setContentCharset(localBasicHttpParams, (String)localObject1);
    boolean bool = true;
    HttpProtocolParams.setUseExpectContinue(localBasicHttpParams, bool);
    SchemeRegistry localSchemeRegistry = new org/apache/http/conn/scheme/SchemeRegistry;
    localSchemeRegistry.<init>();
    Object localObject2 = new org/apache/http/conn/scheme/Scheme;
    str = "http";
    Object localObject3 = PlainSocketFactory.getSocketFactory();
    int i = 80;
    ((Scheme)localObject2).<init>(str, (SocketFactory)localObject3, i);
    localSchemeRegistry.register((Scheme)localObject2);
    localObject2 = new org/apache/http/conn/scheme/Scheme;
    str = "https";
    localObject3 = SSLSocketFactory.getSocketFactory();
    i = 443;
    ((Scheme)localObject2).<init>(str, (SocketFactory)localObject3, i);
    localSchemeRegistry.register((Scheme)localObject2);
    ThreadSafeClientConnManager localThreadSafeClientConnManager = new org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    localThreadSafeClientConnManager.<init>(localBasicHttpParams, localSchemeRegistry);
    localObject2 = new org/apache/http/impl/client/DefaultHttpClient;
    ((DefaultHttpClient)localObject2).<init>(localThreadSafeClientConnManager, localBasicHttpParams);
    return (HttpClient)localObject2;
  }
  
  public static Resources getAppResources()
  {
    Resources localResources = mAppResources;
    if (localResources == null) {
      checkInstance();
    }
    localResources = mAppResources;
    return localResources;
  }
  
  public DWGameState getDWGameState()
  {
    DWGameState localDWGameState = _theDWGameState;
    return localDWGameState;
  }
  
  public HttpClient getHttpClient()
  {
    HttpClient localHttpClient = mHttpclient;
    return localHttpClient;
  }
  
  public static DWApplication getInstance()
  {
    checkInstance();
    DWApplication localDWApplication = instance;
    return localDWApplication;
  }
  
  public PrefsManager getPrefsManager()
  {
    PrefsManager localPrefsManager = _thePrefsManager;
    return localPrefsManager;
  }
  
  public ServerRequestsMgr getServerRequestsMgr()
  {
    ServerRequestsMgr localServerRequestsMgr = _theServerRequestsMgr;
    return localServerRequestsMgr;
  }
  
  public SoundsManager getSoundsManager()
  {
    SoundsManager localSoundsManager = _theSoundsManager;
    return localSoundsManager;
  }
  
  public String getTheAndroidId()
  {
    String str = _theAndroidId;
    return str;
  }
  
  public String getTheVersionCode()
  {
    String str = _theVersionCode;
    return str;
  }
  
  public void onCreate()
  {
    super.onCreate();
    instance = this;
    Object localObject1 = getResources();
    mAppResources = (Resources)localObject1;
    localObject1 = getContentResolver();
    String str1 = "android_id";
    localObject1 = Settings.Secure.getString((ContentResolver)localObject1, str1);
    _theAndroidId = ((String)localObject1);
    localObject1 = _theAndroidId;
    int j = 16;
    localObject1 = PadAndroidId((String)localObject1, j);
    _theAndroidId = ((String)localObject1);
    PackageInfo localPackageInfo = null;
    try
    {
      localObject1 = getPackageManager();
      str2 = getPackageName();
      int k = 0;
      localPackageInfo = ((PackageManager)localObject1).getPackageInfo(str2, k);
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException2)
    {
      for (;;)
      {
        String str2;
        int i;
        Integer localInteger;
        Object localObject2;
        PackageManager.NameNotFoundException localNameNotFoundException1 = localNameNotFoundException2;
        localNameNotFoundException1.printStackTrace();
      }
    }
    i = versionCode;
    localInteger = Integer.valueOf(i);
    localObject2 = localInteger.toString();
    _theVersionCode = ((String)localObject2);
    localObject2 = getAssets();
    str2 = "bohemian_typewriter.ttf";
    localObject2 = Typeface.createFromAsset((AssetManager)localObject2, str2);
    DW_Typeface = ((Typeface)localObject2);
    localObject2 = new kagegames/apps/DWBeta/DWGameState;
    ((DWGameState)localObject2).<init>();
    _theDWGameState = ((DWGameState)localObject2);
    localObject2 = new kagegames/apps/DWBeta/ServerRequestsMgr;
    ((ServerRequestsMgr)localObject2).<init>();
    _theServerRequestsMgr = ((ServerRequestsMgr)localObject2);
    localObject2 = createHttpClient();
    mHttpclient = ((HttpClient)localObject2);
    localObject2 = new kagegames/apps/DWBeta/PrefsManager;
    ((PrefsManager)localObject2).<init>();
    _thePrefsManager = ((PrefsManager)localObject2);
    localObject2 = new kagegames/apps/DWBeta/SoundsManager;
    ((SoundsManager)localObject2).<init>();
    _theSoundsManager = ((SoundsManager)localObject2);
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    shutdownHttpClient();
    SoundsManager localSoundsManager = _theSoundsManager;
    localSoundsManager.cleanup();
  }
  
  public void onTerminate()
  {
    super.onTerminate();
    shutdownHttpClient();
    SoundsManager localSoundsManager = _theSoundsManager;
    localSoundsManager.cleanup();
  }
  
  public void setInInterrupt(boolean paramBoolean)
  {
    mIsInInterrupt = paramBoolean;
  }
  
  private void shutdownHttpClient()
  {
    Object localObject = mHttpclient;
    if (localObject != null)
    {
      localObject = mHttpclient;
      localObject = ((HttpClient)localObject).getConnectionManager();
      if (localObject != null)
      {
        localObject = mHttpclient;
        localObject = ((HttpClient)localObject).getConnectionManager();
        ((ClientConnectionManager)localObject).shutdown();
      }
    }
  }
}

/* Location:
 * Qualified Name:     kagegames.apps.DWBeta.DWApplication
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */