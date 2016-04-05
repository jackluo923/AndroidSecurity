import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.location.Location;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.ads.AdActivity;
import java.math.BigInteger;
import java.net.URLDecoder;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public final class u
{
  private static Boolean a;
  private static String b;
  private static String c;
  private static AudioManager d;
  private static DisplayMetrics e;
  private static boolean f = false;
  private static boolean g = false;
  private static String h;
  
  static
  {
    Boolean localBoolean = null;
    a = localBoolean;
    b = localBoolean;
    boolean bool = true;
    f = bool;
    bool = false;
    g = bool;
    h = localBoolean;
  }
  
  public static DisplayMetrics a(Activity paramActivity)
  {
    Object localObject = e;
    if (localObject == null)
    {
      localObject = new android/util/DisplayMetrics;
      ((DisplayMetrics)localObject).<init>();
      e = (DisplayMetrics)localObject;
      localObject = paramActivity.getWindowManager();
      localObject = ((WindowManager)localObject).getDefaultDisplay();
      DisplayMetrics localDisplayMetrics = e;
      ((Display)localObject).getMetrics(localDisplayMetrics);
    }
    localObject = e;
    return (DisplayMetrics)localObject;
  }
  
  public static String a(Context paramContext)
  {
    Object localObject = b;
    if (localObject == null)
    {
      localObject = paramContext.getContentResolver();
      String str = "android_id";
      localObject = Settings.Secure.getString((ContentResolver)localObject, str);
      if (localObject != null)
      {
        boolean bool = a();
        if (!bool) {}
      }
      else
      {
        localObject = "emulator";
        localObject = a((String)localObject);
        if (localObject != null) {
          break label59;
        }
      }
    }
    for (localObject = null;; localObject = b)
    {
      return (String)localObject;
      localObject = a((String)localObject);
      break;
      label59:
      localObject = ((String)localObject).toUpperCase();
      b = (String)localObject;
    }
  }
  
  public static String a(Location paramLocation)
  {
    double d3 = 1.0E7D;
    if (paramLocation == null) {}
    for (Object localObject1 = null;; localObject1 = ((StringBuilder)localObject1).toString())
    {
      return (String)localObject1;
      localObject1 = "role: 6 producer: 24 historical_role: 1 historical_producer: 12 timestamp: %d latlng < latitude_e7: %d longitude_e7: %d> radius: %d";
      int i = 4;
      Object localObject2 = new Object[i];
      int j = 0;
      long l1 = paramLocation.getTime();
      long l5 = 1000L;
      l1 *= l5;
      Long localLong1 = Long.valueOf(l1);
      localObject2[j] = localLong1;
      j = 1;
      double d1 = paramLocation.getLatitude();
      d1 *= d3;
      long l2 = d1;
      Long localLong2 = Long.valueOf(l2);
      localObject2[j] = localLong2;
      j = 2;
      double d2 = paramLocation.getLongitude();
      d2 *= d3;
      long l3 = d2;
      Long localLong3 = Long.valueOf(l3);
      localObject2[j] = localLong3;
      j = 3;
      float f1 = paramLocation.getAccuracy();
      float f2 = 1000.0F;
      f1 *= f2;
      long l4 = f1;
      Long localLong4 = Long.valueOf(l4);
      localObject2[j] = localLong4;
      localObject1 = String.format((String)localObject1, (Object[])localObject2);
      localObject1 = b((String)localObject1);
      localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      String str = "e1+";
      localObject2 = ((StringBuilder)localObject2).append(str);
      localObject1 = ((StringBuilder)localObject2).append((String)localObject1);
    }
  }
  
  public static String a(WebView paramWebView)
  {
    Object localObject1 = h;
    if (localObject1 == null)
    {
      localObject1 = paramWebView.getSettings();
      localObject1 = ((WebSettings)localObject1).getUserAgentString();
      if (localObject1 != null)
      {
        String str1 = "Java0";
        boolean bool = ((String)localObject1).equals(str1);
        if (!bool) {}
      }
      else
      {
        localObject1 = "java.vm.name";
        localObject2 = "Dalvik";
        localObject1 = System.getProperty((String)localObject1, (String)localObject2);
        localObject2 = "java.vm.version";
        String str2 = "1.1.0";
        localObject2 = System.getProperty((String)localObject2, str2);
        str2 = "os.name";
        Object localObject3 = "Linux";
        str2 = System.getProperty(str2, (String)localObject3);
        localObject3 = new java/lang/StringBuilder;
        ((StringBuilder)localObject3).<init>();
        localObject1 = ((StringBuilder)localObject3).append((String)localObject1);
        localObject3 = "/";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject3);
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject2 = " (";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject1 = ((StringBuilder)localObject1).append(str2);
        localObject2 = "; U; Android ";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject2 = Build.VERSION.RELEASE;
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject2 = "; ";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject2 = Build.MODEL;
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject2 = " Build/";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject2 = Build.ID;
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject2 = ")";
        localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
        localObject1 = ((StringBuilder)localObject1).toString();
      }
      Object localObject2 = new java/lang/StringBuilder;
      ((StringBuilder)localObject2).<init>();
      localObject1 = ((StringBuilder)localObject2).append((String)localObject1);
      localObject2 = " (Mobile; ";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = "afma-sdk-a-v";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = "4.0.2";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = ")";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject1 = ((StringBuilder)localObject1).toString();
      h = (String)localObject1;
    }
    localObject1 = h;
    return (String)localObject1;
  }
  
  private static String a(String paramString)
  {
    i1 = 0;
    Object localObject1 = null;
    if (paramString != null)
    {
      int j = paramString.length();
      if (j <= 0) {}
    }
    try
    {
      localObject1 = "MD5";
      localObject1 = MessageDigest.getInstance((String)localObject1);
      Object localObject2 = paramString.getBytes();
      int k = 0;
      int m = paramString.length();
      ((MessageDigest)localObject1).update((byte[])localObject2, k, m);
      localObject2 = "%032X";
      k = 1;
      Object[] arrayOfObject = new Object[k];
      m = 0;
      BigInteger localBigInteger = new java/math/BigInteger;
      int n = 1;
      localObject1 = ((MessageDigest)localObject1).digest();
      localBigInteger.<init>(n, (byte[])localObject1);
      arrayOfObject[m] = localBigInteger;
      localObject1 = String.format((String)localObject2, arrayOfObject);
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;)
      {
        int i = 32;
        String str = paramString.substring(i1, i);
      }
    }
    return (String)localObject1;
  }
  
  public static HashMap<String, String> a(Uri paramUri)
  {
    Object localObject3 = null;
    int n = 0;
    Object localObject1;
    if (paramUri == null) {
      localObject1 = localObject3;
    }
    label146:
    for (;;)
    {
      return (HashMap<String, String>)localObject1;
      localObject1 = new java/util/HashMap;
      ((HashMap)localObject1).<init>();
      Object localObject2 = paramUri.getEncodedQuery();
      if (localObject2 != null)
      {
        String str1 = "&";
        localObject2 = ((String)localObject2).split(str1);
        int i = localObject2.length;
        int j = n;
        for (;;)
        {
          if (j >= i) {
            break label146;
          }
          String str2 = localObject2[j];
          int k = 61;
          k = str2.indexOf(k);
          int m = -1;
          if (k == m)
          {
            localObject1 = localObject3;
            break;
          }
          String str4 = str2.substring(n, k);
          k += 1;
          str2 = str2.substring(k);
          String str3 = URLDecoder.decode(str4);
          str2 = URLDecoder.decode(str2);
          ((HashMap)localObject1).put(str3, str2);
          j += 1;
        }
      }
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    f = paramBoolean;
  }
  
  public static boolean a()
  {
    String str1 = "unknown";
    String str4 = Build.BOARD;
    boolean bool1 = str1.equals(str4);
    if (bool1)
    {
      String str2 = "generic";
      str4 = Build.DEVICE;
      boolean bool2 = str2.equals(str4);
      if (bool2)
      {
        String str3 = "generic";
        str4 = Build.BRAND;
        bool3 = str3.equals(str4);
        if (!bool3) {}
      }
    }
    for (boolean bool3 = true;; bool3 = false) {
      return bool3;
    }
  }
  
  private static String b(String paramString)
  {
    try
    {
      localObject1 = "AES/CBC/PKCS5Padding";
      localObject1 = Cipher.getInstance((String)localObject1);
      int i = 1;
      Object localObject3 = new javax/crypto/spec/SecretKeySpec;
      int m = 16;
      byte[] arrayOfByte3 = new byte[m];
      String str = "AES";
      ((SecretKeySpec)localObject3).<init>(arrayOfByte3, str);
      ((Cipher)localObject1).init(i, (Key)localObject3);
      byte[] arrayOfByte1 = ((Cipher)localObject1).getIV();
      localObject3 = paramString.getBytes();
      localObject1 = ((Cipher)localObject1).doFinal((byte[])localObject3);
      int k = arrayOfByte1.length;
      int n = localObject1.length;
      k += n;
      byte[] arrayOfByte2 = new byte[k];
      n = 0;
      int i1 = 0;
      int i2 = arrayOfByte1.length;
      System.arraycopy(arrayOfByte1, n, arrayOfByte2, i1, i2);
      n = 0;
      int j = arrayOfByte1.length;
      i1 = localObject1.length;
      System.arraycopy(localObject1, n, arrayOfByte2, j, i1);
      localObject1 = v.a(arrayOfByte2);
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      for (;;)
      {
        Object localObject1;
        Object localObject2 = null;
      }
    }
    return (String)localObject1;
  }
  
  public static void b(WebView paramWebView)
  {
    WebSettings localWebSettings = paramWebView.getSettings();
    String str = a(paramWebView);
    localWebSettings.setUserAgentString(str);
  }
  
  public static boolean b()
  {
    boolean bool = f;
    return bool;
  }
  
  public static boolean b(Context paramContext)
  {
    String str2 = 0;
    Boolean localBoolean = a;
    if (localBoolean != null)
    {
      localBoolean = a;
      boolean bool = localBoolean.booleanValue();
      return bool;
    }
    Object localObject1 = paramContext.getPackageManager();
    Intent localIntent = new android/content/Intent;
    Class localClass = AdActivity.class;
    localIntent.<init>(paramContext, localClass);
    int k = 65536;
    localObject1 = ((PackageManager)localObject1).resolveActivity(localIntent, k);
    int j = 1;
    ActivityInfo localActivityInfo1;
    if (localObject1 != null)
    {
      localActivityInfo1 = activityInfo;
      if (localActivityInfo1 != null) {}
    }
    else
    {
      localObject1 = "Could not find com.google.ads.AdActivity, please make sure it is registered in AndroidManifest.xml.";
      t.b((String)localObject1);
      localObject1 = str2;
    }
    for (;;)
    {
      Object localObject2 = Boolean.valueOf(localObject1);
      a = (Boolean)localObject2;
      break;
      localActivityInfo1 = activityInfo;
      int m = configChanges;
      m &= 0x10;
      if (m == 0)
      {
        localObject2 = "The android:configChanges value of the com.google.ads.internal.AdActivity must include keyboard.";
        t.b((String)localObject2);
        localObject2 = str2;
      }
      ActivityInfo localActivityInfo2 = activityInfo;
      int n = configChanges;
      n &= 0x20;
      if (n == 0)
      {
        localObject2 = "The android:configChanges value of the com.google.ads.internal.AdMobActivity must include keyboardHidden.";
        t.b((String)localObject2);
        localObject2 = str2;
      }
      localObject1 = activityInfo;
      int i = configChanges;
      i += 128;
      String str1;
      if (i == 0)
      {
        str1 = "The android:configChanges value of the com.google.ads.internal.AdActivity must include orientation.";
        t.b(str1);
        str1 = str2;
      }
      else
      {
        str1 = localObject2;
      }
    }
  }
  
  public static String c(Context paramContext)
  {
    Object localObject = "connectivity";
    paramContext = paramContext.getSystemService((String)localObject);
    paramContext = (ConnectivityManager)paramContext;
    localObject = paramContext.getActiveNetworkInfo();
    if (localObject == null) {
      localObject = null;
    }
    for (;;)
    {
      return (String)localObject;
      int i = ((NetworkInfo)localObject).getType();
      String str;
      switch (i)
      {
      default: 
        str = "unknown";
        break;
      case 0: 
        str = "ed";
        break;
      case 1: 
        str = "wi";
      }
    }
  }
  
  public static String d(Context paramContext)
  {
    int m = 65536;
    Object localObject1 = c;
    if (localObject1 == null)
    {
      localObject1 = new java/lang/StringBuilder;
      ((StringBuilder)localObject1).<init>();
      Object localObject2 = paramContext.getPackageManager();
      Object localObject3 = new android/content/Intent;
      String str2 = "android.intent.action.VIEW";
      Object localObject6 = "geo:0,0?q=donuts";
      localObject6 = Uri.parse((String)localObject6);
      ((Intent)localObject3).<init>(str2, (Uri)localObject6);
      localObject3 = ((PackageManager)localObject2).queryIntentActivities((Intent)localObject3, m);
      if (localObject3 != null)
      {
        int j = ((List)localObject3).size();
        if (j != 0) {}
      }
      else
      {
        localObject4 = "m";
        ((StringBuilder)localObject1).append((String)localObject4);
      }
      Object localObject4 = new android/content/Intent;
      str2 = "android.intent.action.VIEW";
      localObject6 = "market://search?q=pname:com.admob";
      localObject6 = Uri.parse((String)localObject6);
      ((Intent)localObject4).<init>(str2, (Uri)localObject6);
      localObject4 = ((PackageManager)localObject2).queryIntentActivities((Intent)localObject4, m);
      int k;
      if (localObject4 != null)
      {
        k = ((List)localObject4).size();
        if (k != 0) {}
      }
      else
      {
        k = ((StringBuilder)localObject1).length();
        if (k > 0)
        {
          localObject5 = ",";
          ((StringBuilder)localObject1).append((String)localObject5);
        }
        localObject5 = "a";
        ((StringBuilder)localObject1).append((String)localObject5);
      }
      Object localObject5 = new android/content/Intent;
      str2 = "android.intent.action.VIEW";
      localObject6 = "tel://6509313940";
      localObject6 = Uri.parse((String)localObject6);
      ((Intent)localObject5).<init>(str2, (Uri)localObject6);
      localObject2 = ((PackageManager)localObject2).queryIntentActivities((Intent)localObject5, m);
      int i;
      if (localObject2 != null)
      {
        i = ((List)localObject2).size();
        if (i != 0) {}
      }
      else
      {
        i = ((StringBuilder)localObject1).length();
        if (i > 0)
        {
          str1 = ",";
          ((StringBuilder)localObject1).append(str1);
        }
        String str1 = "t";
        ((StringBuilder)localObject1).append(str1);
      }
      localObject1 = ((StringBuilder)localObject1).toString();
      c = (String)localObject1;
    }
    localObject1 = c;
    return (String)localObject1;
  }
  
  public static u.a e(Context paramContext)
  {
    u.a locala2 = 1;
    Object localObject1 = d;
    if (localObject1 == null)
    {
      localObject1 = "audio";
      paramContext = paramContext.getSystemService((String)localObject1);
      paramContext = (AudioManager)paramContext;
      d = paramContext;
    }
    localObject1 = u.a.f;
    localObject1 = d;
    int i = ((AudioManager)localObject1).getMode();
    boolean bool1 = a();
    Object localObject2;
    if (bool1) {
      localObject2 = u.a.e;
    }
    for (;;)
    {
      return (u.a)localObject2;
      AudioManager localAudioManager1 = d;
      boolean bool2 = localAudioManager1.isMusicActive();
      if (!bool2)
      {
        AudioManager localAudioManager2 = d;
        boolean bool3 = localAudioManager2.isSpeakerphoneOn();
        if (!bool3)
        {
          Object localObject3 = 2;
          if ((localObject2 != localObject3) && (localObject2 != locala2)) {
            break label101;
          }
        }
      }
      localObject2 = u.a.d;
      continue;
      label101:
      localObject2 = d;
      u.a locala1 = ((AudioManager)localObject2).getRingerMode();
      if ((locala1 == 0) || (locala1 == locala2)) {
        locala1 = u.a.d;
      } else {
        locala1 = u.a.b;
      }
    }
  }
  
  public static String f(Context paramContext)
  {
    String str = "p";
    Object localObject = "window";
    paramContext = paramContext.getSystemService((String)localObject);
    paramContext = (WindowManager)paramContext;
    localObject = paramContext.getDefaultDisplay();
    int i = ((Display)localObject).getOrientation();
    int j = 1;
    if (i == j) {
      str = "l";
    }
    return str;
  }
  
  public static void g(Context paramContext)
  {
    boolean bool1 = g;
    if (bool1) {}
    for (;;)
    {
      return;
      IntentFilter localIntentFilter = new android/content/IntentFilter;
      localIntentFilter.<init>();
      Object localObject = "android.intent.action.USER_PRESENT";
      localIntentFilter.addAction((String)localObject);
      localObject = "android.intent.action.SCREEN_OFF";
      localIntentFilter.addAction((String)localObject);
      localObject = new u$b;
      ((u.b)localObject).<init>();
      paramContext.registerReceiver((BroadcastReceiver)localObject, localIntentFilter);
      boolean bool2 = true;
      g = bool2;
    }
  }
}

/* Location:
 * Qualified Name:     u
 * Java Class Version: 5 (49.0)
 * JD-Core Version:    0.7.1
 */