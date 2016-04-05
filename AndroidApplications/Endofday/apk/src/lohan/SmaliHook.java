package lohan;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Random;

public class SmaliHook
{
  private static boolean DEBUG = false;
  private static boolean DUMP_STACK = false;
  private static String LOG_TAG;
  private static String PrefsFile;
  private static Context myAppContext;
  private static int myIDSpoofType = 0;
  private static String mySpoofID;
  
  static
  {
    String str1 = "zjtuxmk";
    PrefsFile = str1;
    str1 = null;
    myAppContext = str1;
    str1 = "0";
    int i = Integer.parseInt(str1);
    myIDSpoofType = i;
    String str2 = "";
    mySpoofID = str2;
    str2 = "lohan";
    LOG_TAG = str2;
    boolean bool = true;
    DEBUG = bool;
    bool = false;
    DUMP_STACK = bool;
  }
  
  public static void DumpStack()
  {
    Thread localThread = Thread.currentThread();
    StackTraceElement[] arrayOfStackTraceElement = localThread.getStackTrace();
    String str = "Stack trace:\n";
    int i = 4;
    for (;;)
    {
      int j = arrayOfStackTraceElement.length;
      if (i >= j)
      {
        localObject1 = LOG_TAG;
        Log.d((String)localObject1, str);
        return;
      }
      Object localObject1 = new java/lang/StringBuilder;
      Object localObject2 = String.valueOf(str);
      ((StringBuilder)localObject1).<init>((String)localObject2);
      localObject2 = "  ";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = arrayOfStackTraceElement[i];
      localObject2 = ((StackTraceElement)localObject2).toString();
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      localObject2 = "\n";
      localObject1 = ((StringBuilder)localObject1).append((String)localObject2);
      str = ((StringBuilder)localObject1).toString();
      i += 1;
    }
  }
  
  public static void DumpStackIfWeShould()
  {
    boolean bool = DUMP_STACK;
    if (!bool) {}
    for (;;)
    {
      return;
      DumpStack();
    }
  }
  
  public static void Log(Object paramObject)
  {
    boolean bool = DEBUG;
    if (!bool) {}
    for (;;)
    {
      return;
      String str1 = LOG_TAG;
      String str2 = String.valueOf(paramObject);
      Log.d(str1, str2);
    }
  }
  
  public static void Toast(Object paramObject) {}
  
  public static int checkSignatures()
  {
    String str = "checkSignatures() returning SIGNATURE_MATCH";
    Log(str);
    DumpStackIfWeShould();
    int i = 0;
    return i;
  }
  
  public static int checkSignatures(String paramString1, String paramString2)
  {
    Object localObject = new java/lang/StringBuilder;
    String str = "checkSignatures(";
    ((StringBuilder)localObject).<init>(str);
    localObject = ((StringBuilder)localObject).append(paramString1);
    str = ", ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(paramString2);
    str = ") returning SIGNATURE_MATCH";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).toString();
    Log(localObject);
    DumpStackIfWeShould();
    int i = 0;
    return i;
  }
  
  private static String generateRandomDeviceID()
  {
    String str = "0123456789";
    int i = 15;
    str = generateString(str, i);
    return str;
  }
  
  private static String generateString(String paramString, int paramInt)
  {
    Random localRandom = new java/util/Random;
    localRandom.<init>();
    char[] arrayOfChar = new char[paramInt];
    int i = 0;
    for (;;)
    {
      if (i >= paramInt)
      {
        String str = new java/lang/String;
        str.<init>(arrayOfChar);
        return str;
      }
      int j = paramString.length();
      j = localRandom.nextInt(j);
      j = paramString.charAt(j);
      arrayOfChar[i] = j;
      i += 1;
    }
  }
  
  public static int getApplicationEnabledSetting(PackageManager paramPackageManager, String paramString)
  {
    try
    {
      i = paramPackageManager.getApplicationEnabledSetting(paramString);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        int j;
        Object localObject;
        String str;
        int i = 0;
      }
    }
    j = 2;
    if (i == j) {
      i = 0;
    }
    localObject = new java/lang/StringBuilder;
    str = "enabledSetting(";
    ((StringBuilder)localObject).<init>(str);
    localObject = ((StringBuilder)localObject).append(paramString);
    str = ") returning ";
    localObject = ((StringBuilder)localObject).append(str);
    localObject = ((StringBuilder)localObject).append(i);
    localObject = ((StringBuilder)localObject).toString();
    Log(localObject);
    DumpStackIfWeShould();
    return i;
  }
  
  public static String getDeviceID()
  {
    String str2 = "359261030318356";
    int i = myIDSpoofType;
    int n = 5;
    Object localObject1;
    if (i == n) {
      localObject1 = mySpoofID;
    }
    String str1;
    for (;;)
    {
      return (String)localObject1;
      localObject1 = myAppContext;
      if (localObject1 == null)
      {
        localObject1 = "getDeviceID has no context, can't spoof device id. using fallback.";
        Log(localObject1);
        localObject1 = str2;
      }
      else
      {
        str1 = getRealDeviceID();
        int j = myIDSpoofType;
        if (j != 0) {
          break;
        }
        Object localObject2 = new java/lang/StringBuilder;
        String str3 = "getDeviceID is disabled, returning real id: ";
        ((StringBuilder)localObject2).<init>(str3);
        localObject2 = ((StringBuilder)localObject2).append(str2);
        localObject2 = ((StringBuilder)localObject2).toString();
        Log(localObject2);
        localObject2 = str1;
      }
    }
    int k = myIDSpoofType;
    int i1 = 1;
    if (k == i1) {
      str2 = generateRandomDeviceID();
    }
    String str4;
    SharedPreferences localSharedPreferences;
    do
    {
      Object localObject3 = new java/lang/StringBuilder;
      str4 = "spoofing device id: ";
      ((StringBuilder)localObject3).<init>(str4);
      localObject3 = ((StringBuilder)localObject3).append(str2);
      str4 = "  real: ";
      localObject3 = ((StringBuilder)localObject3).append(str4);
      localObject3 = ((StringBuilder)localObject3).append(str1);
      localObject3 = ((StringBuilder)localObject3).toString();
      Log(localObject3);
      localObject3 = str2;
      break;
      localObject3 = myAppContext;
      str4 = PrefsFile;
      int i2 = 0;
      localSharedPreferences = ((Context)localObject3).getSharedPreferences(str4, i2);
      localObject3 = "android_id";
      str4 = "";
      str2 = localSharedPreferences.getString((String)localObject3, str4);
      m = str2.length();
    } while (m != 0);
    int m = myIDSpoofType;
    switch (m)
    {
    }
    for (;;)
    {
      Object localObject4 = new java/lang/StringBuilder;
      str4 = "using ";
      ((StringBuilder)localObject4).<init>(str4);
      str4 = PrefsFile;
      localObject4 = ((StringBuilder)localObject4).append(str4);
      str4 = " for prefs file name";
      localObject4 = ((StringBuilder)localObject4).append(str4);
      localObject4 = ((StringBuilder)localObject4).toString();
      Log(localObject4);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localObject4 = "android_id";
      localEditor.putString((String)localObject4, str2);
      localEditor.commit();
      break;
      str2 = generateRandomDeviceID();
      continue;
      str2 = getPermutedDeviceID();
      continue;
      str2 = "000000000000000";
      continue;
      str2 = mySpoofID;
    }
  }
  
  public static String getInstallerPackageName(PackageManager paramPackageManager, String paramString)
  {
    String str1 = paramPackageManager.getInstallerPackageName(paramString);
    if (str1 == null) {
      str1 = "com.google.android.feedback";
    }
    Object localObject = new java/lang/StringBuilder;
    String str2 = "getInstallerPackageName(";
    ((StringBuilder)localObject).<init>(str2);
    localObject = ((StringBuilder)localObject).append(paramString);
    str2 = ") returning ";
    localObject = ((StringBuilder)localObject).append(str2);
    localObject = ((StringBuilder)localObject).append(str1);
    localObject = ((StringBuilder)localObject).toString();
    Log(localObject);
    DumpStackIfWeShould();
    return str1;
  }
  
  public static PackageInfo getPackageInfo(PackageManager paramPackageManager, String paramString, int paramInt)
    throws PackageManager.NameNotFoundException
  {
    int j = 0;
    try
    {
      localPackageInfo = paramPackageManager.getPackageInfo(paramString, paramInt);
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        int k;
        int n;
        Signature[] arrayOfSignature1;
        int i;
        Signature[] arrayOfSignature2;
        int m;
        Object localObject1 = paramString.toLowerCase();
        String str4 = "pro";
        boolean bool1 = ((String)localObject1).contains(str4);
        if (!bool1)
        {
          String str1 = paramString.toLowerCase();
          str4 = "full";
          boolean bool2 = str1.contains(str4);
          if (!bool2)
          {
            String str2 = paramString.toLowerCase();
            str4 = "donate";
            boolean bool3 = str2.contains(str4);
            if (!bool3)
            {
              String str3 = paramString.toLowerCase();
              str4 = "key";
              boolean bool4 = str3.endsWith(str4);
              if (!bool4)
              {
                localObject2 = new android/content/pm/PackageManager$NameNotFoundException;
                ((PackageManager.NameNotFoundException)localObject2).<init>();
                throw ((Throwable)localObject2);
              }
            }
          }
        }
        Object localObject2 = "com.AmazingBullshit.HolyFuckingBible";
        PackageInfo localPackageInfo = paramPackageManager.getPackageInfo((String)localObject2, paramInt);
        continue;
        localObject2 = signatures;
        str4 = arrayOfSignature1[i];
        localObject2[i] = str4;
        i += 1;
      }
    }
    k = paramInt & 0x40;
    n = 64;
    if (k == n)
    {
      arrayOfSignature1 = spoofSignatures();
      i = 0;
      arrayOfSignature2 = signatures;
      m = arrayOfSignature2.length;
      if (i >= m)
      {
        localObject1 = new java/lang/StringBuilder;
        str4 = "spoofing signatures for ";
        ((StringBuilder)localObject1).<init>(str4);
        localObject1 = ((StringBuilder)localObject1).append(paramString);
        localObject1 = ((StringBuilder)localObject1).toString();
        Log(localObject1);
        DumpStackIfWeShould();
      }
    }
    else
    {
      return localPackageInfo;
    }
  }
  
  private static String getPermutedDeviceID()
  {
    int i2 = 5;
    int i1 = 1;
    int n = 0;
    int m = 3;
    int k = 2;
    int j = 15;
    int[] arrayOfInt = new int[j];
    j = 12;
    arrayOfInt[n] = j;
    arrayOfInt[i1] = k;
    j = 10;
    arrayOfInt[k] = j;
    arrayOfInt[m] = k;
    j = 4;
    k = 15;
    arrayOfInt[j] = k;
    j = 8;
    arrayOfInt[i2] = j;
    j = 7;
    arrayOfInt[j] = m;
    j = 8;
    k = 14;
    arrayOfInt[j] = k;
    j = 9;
    arrayOfInt[j] = m;
    j = 10;
    k = 6;
    arrayOfInt[j] = k;
    j = 11;
    k = 9;
    arrayOfInt[j] = k;
    j = 12;
    arrayOfInt[j] = i2;
    j = 13;
    arrayOfInt[j] = i1;
    j = 14;
    k = 11;
    arrayOfInt[j] = k;
    String str1 = getRealDeviceID();
    String str2 = "";
    if (str1 != null)
    {
      j = arrayOfInt.length;
      k = n;
    }
    for (;;)
    {
      if (k >= j) {
        return str2;
      }
      int i = arrayOfInt[k];
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      String str3 = String.valueOf(str2);
      localStringBuilder.<init>(str3);
      char c = str1.charAt(i);
      localStringBuilder = localStringBuilder.append(c);
      str2 = localStringBuilder.toString();
      k += 1;
    }
  }
  
  private static String getRealDeviceID()
  {
    Object localObject2 = myAppContext;
    String str = "phone";
    Object localObject1 = ((Context)localObject2).getSystemService(str);
    localObject1 = (TelephonyManager)localObject1;
    localObject2 = ((TelephonyManager)localObject1).getDeviceId();
    return (String)localObject2;
  }
  
  public String getSettingsString(ContentResolver paramContentResolver, String paramString)
  {
    String str1 = "android_id";
    boolean bool = paramString.equals(str1);
    if (bool)
    {
      str2 = "setting for android_id requested, calling getDeviceID()";
      Log(str2);
    }
    for (String str2 = getDeviceID();; str2 = Settings.Secure.getString(paramContentResolver, str2))
    {
      return str2;
      str2 = "android_id";
    }
  }
  
  public static Object invokeHook(Method paramMethod, Object paramObject, Object[] paramArrayOfObject)
    throws IllegalArgumentException, IllegalAccessException, InvocationTargetException, PackageManager.NameNotFoundException
  {
    int i = 1;
    Object localObject4 = "unknown-static";
    String str18 = paramMethod.getName();
    Object localObject10;
    String str17;
    int i2;
    Object localObject8;
    if (paramObject != null)
    {
      localObject4 = paramObject.getClass();
      localObject4 = ((Class)localObject4).getName();
      localObject10 = localObject4;
      boolean bool17 = DEBUG;
      if (bool17)
      {
        Object localObject5 = new java/lang/StringBuilder;
        String str16 = "Invoke Hook: ";
        ((StringBuilder)localObject5).<init>(str16);
        localObject5 = ((StringBuilder)localObject5).append((String)localObject10);
        str16 = ".";
        localObject5 = ((StringBuilder)localObject5).append(str16);
        localObject5 = ((StringBuilder)localObject5).append(str18);
        str16 = "(";
        localObject5 = ((StringBuilder)localObject5).append(str16);
        str17 = ((StringBuilder)localObject5).toString();
        if (paramArrayOfObject == null) {
          break label1042;
        }
        localObject5 = "";
        int i1 = paramArrayOfObject.length;
        int m = 0;
        i2 = m;
        localObject8 = localObject5;
        label137:
        if (i2 < i1) {
          break label308;
        }
        int k = ((String)localObject8).length();
        i1 = 2;
        if (k <= i1) {
          break label1035;
        }
        k = 0;
        i1 = ((String)localObject8).length();
        i2 = 2;
        i1 -= i2;
        localObject6 = ((String)localObject8).substring(k, i1);
        label192:
        localObject8 = new java/lang/StringBuilder;
        str17 = String.valueOf(str17);
        ((StringBuilder)localObject8).<init>(str17);
        localObject6 = ((StringBuilder)localObject8).append((String)localObject6);
      }
    }
    label308:
    label815:
    label1035:
    Object localObject7;
    label1042:
    for (Object localObject6 = ((StringBuilder)localObject6).toString();; localObject7 = str17)
    {
      localObject8 = new java/lang/StringBuilder;
      localObject6 = String.valueOf(localObject6);
      ((StringBuilder)localObject8).<init>((String)localObject6);
      localObject6 = ")";
      localObject6 = ((StringBuilder)localObject8).append((String)localObject6);
      localObject6 = ((StringBuilder)localObject6).toString();
      Log(localObject6);
      DumpStackIfWeShould();
      if (i == 0) {
        paramMethod = paramMethod.invoke(paramObject, paramArrayOfObject);
      }
      Object localObject9;
      for (;;)
      {
        return paramMethod;
        localObject6 = paramMethod.getDeclaringClass();
        localObject6 = ((Class)localObject6).getName();
        localObject10 = localObject6;
        break;
        localObject6 = paramArrayOfObject[i2];
        Object localObject11 = new java/lang/StringBuilder;
        localObject8 = String.valueOf(localObject8);
        ((StringBuilder)localObject11).<init>((String)localObject8);
        localObject8 = localObject6.getClass();
        localObject8 = ((Class)localObject8).getName();
        localObject8 = ((StringBuilder)localObject11).append((String)localObject8);
        localObject11 = ":";
        localObject8 = ((StringBuilder)localObject8).append((String)localObject11);
        localObject6 = ((StringBuilder)localObject8).append(localObject6);
        localObject8 = ", ";
        localObject6 = ((StringBuilder)localObject6).append((String)localObject8);
        localObject6 = ((StringBuilder)localObject6).toString();
        int n = i2 + 1;
        i2 = n;
        localObject9 = localObject6;
        break label137;
        String str1 = "android.app.ContextImpl$ApplicationPackageManager";
        boolean bool1 = ((String)localObject10).equals(str1);
        if (!bool1)
        {
          String str2 = "android.app.ApplicationContext$ApplicationPackageManager";
          boolean bool2 = ((String)localObject10).equals(str2);
          if (!bool2)
          {
            String str3 = "android.content.pm.PackageManager";
            boolean bool3 = ((String)localObject10).equals(str3);
            if (!bool3)
            {
              String str4 = "ApplicationPackageManager";
              boolean bool4 = ((String)localObject10).contains(str4);
              if (!bool4) {
                break label815;
              }
            }
          }
        }
        String str5 = "getInstallerPackageName";
        boolean bool5 = str18.equals(str5);
        if (bool5)
        {
          paramObject = (PackageManager)paramObject;
          paramMethod = 0;
          paramMethod = paramArrayOfObject[paramMethod];
          paramMethod = (String)paramMethod;
          paramMethod = getInstallerPackageName((PackageManager)paramObject, paramMethod);
        }
        else
        {
          String str6 = "getPackageInfo";
          boolean bool6 = str18.equals(str6);
          boolean bool18;
          Object localObject1;
          if (bool6)
          {
            bool6 = true;
            Object localObject2 = paramArrayOfObject[bool6];
            localObject2 = (Integer)localObject2;
            int j = ((Integer)localObject2).intValue();
            localObject6 = "android.content.pm.PackageManager";
            bool18 = ((String)localObject10).equals(localObject6);
            if (bool18)
            {
              paramObject = (PackageManager)paramObject;
              paramMethod = 0;
              paramMethod = paramArrayOfObject[paramMethod];
              paramMethod = (String)paramMethod;
              paramMethod = getPackageInfo((PackageManager)paramObject, paramMethod, j);
              continue;
            }
            bool18 = false;
            try
            {
              paramMethod = paramMethod.invoke(paramObject, paramArrayOfObject);
            }
            catch (Exception paramArrayOfObject)
            {
              for (;;)
              {
                paramArrayOfObject = 1;
                paramArrayOfObject = new Object[paramArrayOfObject];
                bool18 = false;
                localObject9 = "com.AmazingBullshit.HolyFuckingBible";
                paramArrayOfObject[bool18] = localObject9;
                paramMethod = paramMethod.invoke(paramObject, paramArrayOfObject);
              }
            }
            paramObject = j & 0x40;
            paramArrayOfObject = 64;
            if (paramObject != paramArrayOfObject) {
              continue;
            }
            paramObject = spoofSignatures();
            localObject1 = paramMethod;
            localObject1 = (PackageInfo)localObject1;
            paramArrayOfObject = (Object[])localObject1;
            paramArrayOfObject = signatures;
            j = 0;
            bool18 = false;
            paramObject = paramObject[bool18];
            paramArrayOfObject[j] = paramObject;
            continue;
          }
          String str7 = "getApplicationEnabledSetting";
          boolean bool7 = str18.equals(str7);
          if (bool7)
          {
            paramObject = (PackageManager)paramObject;
            paramMethod = 0;
            paramMethod = paramArrayOfObject[paramMethod];
            paramMethod = (String)paramMethod;
            paramMethod = getApplicationEnabledSetting((PackageManager)paramObject, paramMethod);
            paramMethod = Integer.valueOf(paramMethod);
          }
          else
          {
            String str8 = "checkSignatures";
            boolean bool8 = str18.equals(str8);
            if (bool8)
            {
              paramMethod = 0;
              paramMethod = paramArrayOfObject[paramMethod];
              paramMethod = (String)paramMethod;
              paramObject = 1;
              paramObject = paramArrayOfObject[paramObject];
              paramObject = (String)paramObject;
              paramMethod = checkSignatures(paramMethod, (String)paramObject);
              paramMethod = Integer.valueOf(paramMethod);
              continue;
              String str9 = "org.bouncycastle.jce.provider.JDKDigestSignature";
              boolean bool9 = ((String)localObject10).startsWith(str9);
              if (bool9)
              {
                String str10 = "initVerify";
                boolean bool10 = str18.equals(str10);
                if (bool10)
                {
                  paramMethod = null;
                  continue;
                }
                String str11 = "update";
                boolean bool11 = str18.equals(str11);
                if (bool11)
                {
                  paramMethod = null;
                  continue;
                }
                String str12 = "verify";
                boolean bool12 = str18.equals(str12);
                if (bool12)
                {
                  paramMethod = 1;
                  paramMethod = Boolean.valueOf(paramMethod);
                }
              }
              else
              {
                String str13 = "java.io.File";
                boolean bool13 = ((String)localObject10).equals(str13);
                if (bool13)
                {
                  localObject1 = paramObject;
                  localObject1 = (File)localObject1;
                  Object localObject3 = localObject1;
                  boolean bool14 = shouldSpoofFileInfo((File)localObject3);
                  if (bool14)
                  {
                    String str14 = "length";
                    boolean bool15 = str18.equals(str14);
                    if (bool15)
                    {
                      paramObject = (File)paramObject;
                      paramMethod = length((File)paramObject);
                      paramMethod = Long.valueOf(paramMethod);
                      continue;
                    }
                    String str15 = "lastModified";
                    boolean bool16 = str18.equals(str15);
                    if (bool16)
                    {
                      paramObject = (File)paramObject;
                      paramMethod = lastModified((File)paramObject);
                      paramMethod = Long.valueOf(paramMethod);
                      continue;
                    }
                  }
                }
              }
            }
            paramMethod = paramMethod.invoke(paramObject, paramArrayOfObject);
          }
        }
      }
      localObject7 = localObject9;
      break label192;
    }
  }
  
  public static long lastModified(File paramFile)
  {
    String str1 = "1302634263227";
    long l = Long.parseLong(str1);
    boolean bool = DUMP_STACK;
    if (bool) {
      Thread.dumpStack();
    }
    bool = shouldSpoofFileInfo(paramFile);
    if (!bool)
    {
      l = paramFile.lastModified();
      Object localObject = new java/lang/StringBuilder;
      String str2 = "spoofing file modified of ";
      ((StringBuilder)localObject).<init>(str2);
      str2 = paramFile.getName();
      localObject = ((StringBuilder)localObject).append(str2);
      str2 = " with ";
      localObject = ((StringBuilder)localObject).append(str2);
      localObject = ((StringBuilder)localObject).append(l);
      localObject = ((StringBuilder)localObject).toString();
      Log(localObject);
      DumpStackIfWeShould();
    }
    return l;
  }
  
  public static long length(File paramFile)
  {
    String str1 = "1665051";
    long l = Long.parseLong(str1);
    boolean bool = shouldSpoofFileInfo(paramFile);
    if (!bool)
    {
      l = paramFile.length();
      Object localObject = new java/lang/StringBuilder;
      String str2 = "spoofing file length of ";
      ((StringBuilder)localObject).<init>(str2);
      str2 = paramFile.getName();
      localObject = ((StringBuilder)localObject).append(str2);
      str2 = " with ";
      localObject = ((StringBuilder)localObject).append(str2);
      localObject = ((StringBuilder)localObject).append(l);
      localObject = ((StringBuilder)localObject).toString();
      Log(localObject);
      DumpStackIfWeShould();
    }
    return l;
  }
  
  /* Error */
  public static String md5Hash(File paramFile)
  {
    // Byte code:
    //   0: nop
    //   1: aconst_null
    //   2: astore 6
    //   4: aconst_null
    //   5: astore 4
    //   7: ldc 81
    //   9: astore 7
    //   11: aload 7
    //   13: invokestatic 314	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   16: astore 6
    //   18: new 232	java/io/FileInputStream
    //   21: astore 5
    //   23: aload 5
    //   25: aload_0
    //   26: invokespecial 238	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   29: new 180	java/security/DigestInputStream
    //   32: astore 4
    //   34: aload 4
    //   36: aload 5
    //   38: aload 6
    //   40: invokespecial 299	java/security/DigestInputStream:<init>	(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    //   43: sipush 8192
    //   46: istore 7
    //   48: iload 7
    //   50: newarray <illegal type>
    //   52: astore_1
    //   53: aload 4
    //   55: aload_1
    //   56: invokevirtual 439	java/io/InputStream:read	([B)I
    //   59: istore 7
    //   61: iconst_m1
    //   62: istore 8
    //   64: iload 7
    //   66: iload 8
    //   68: if_icmpne -15 -> 53
    //   71: aload 4
    //   73: invokevirtual 154	java/io/InputStream:close	()V
    //   76: aload 6
    //   78: invokevirtual 84	java/security/MessageDigest:digest	()[B
    //   81: astore_2
    //   82: aload_2
    //   83: invokevirtual 251	java/lang/Object:toString	()Ljava/lang/String;
    //   86: astore 7
    //   88: aload 7
    //   90: areturn
    //   91: astore 7
    //   93: aload 7
    //   95: astore_3
    //   96: aload_3
    //   97: invokevirtual 46	java/lang/Exception:printStackTrace	()V
    //   100: aload 4
    //   102: invokevirtual 154	java/io/InputStream:close	()V
    //   105: goto -29 -> 76
    //   108: astore_3
    //   109: aload_3
    //   110: invokevirtual 63	java/io/IOException:printStackTrace	()V
    //   113: goto -37 -> 76
    //   116: astore 7
    //   118: aload 4
    //   120: invokevirtual 154	java/io/InputStream:close	()V
    //   123: aload 7
    //   125: athrow
    //   126: astore_3
    //   127: aload_3
    //   128: invokevirtual 63	java/io/IOException:printStackTrace	()V
    //   131: goto -8 -> 123
    //   134: astore_3
    //   135: aload_3
    //   136: invokevirtual 63	java/io/IOException:printStackTrace	()V
    //   139: goto -63 -> 76
    //   142: astore 7
    //   144: aload 5
    //   146: astore 4
    //   148: goto -30 -> 118
    //   151: astore 7
    //   153: aload 7
    //   155: astore_3
    //   156: aload 5
    //   158: astore 4
    //   160: goto -64 -> 96
    //   163: nop
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	paramFile	File
    //   52	4	1	arrayOfByte1	byte[]
    //   81	2	2	arrayOfByte2	byte[]
    //   95	2	3	localException1	Exception
    //   108	2	3	localIOException1	java.io.IOException
    //   126	2	3	localIOException2	java.io.IOException
    //   134	2	3	localIOException3	java.io.IOException
    //   155	1	3	localException2	Exception
    //   5	154	4	localObject1	Object
    //   21	136	5	localFileInputStream	java.io.FileInputStream
    //   2	75	6	localMessageDigest	java.security.MessageDigest
    //   9	3	7	str1	String
    //   46	23	7	i	int
    //   86	3	7	str2	String
    //   91	3	7	localException3	Exception
    //   116	8	7	localObject2	Object
    //   142	1	7	localObject3	Object
    //   151	3	7	localException4	Exception
    //   62	7	8	j	int
    // Exception table:
    //   from	to	target	type
    //   7	11	91	java/lang/Exception
    //   18	23	91	java/lang/Exception
    //   48	53	91	java/lang/Exception
    //   100	105	108	java/io/IOException
    //   7	11	116	finally
    //   18	23	116	finally
    //   48	53	116	finally
    //   96	100	116	finally
    //   118	123	126	java/io/IOException
    //   71	76	134	java/io/IOException
    //   29	34	142	finally
    //   29	34	151	java/lang/Exception
  }
  
  public static void setAppContext(Context paramContext)
  {
    Context localContext = myAppContext;
    if (localContext == null) {
      myAppContext = paramContext;
    }
  }
  
  private static boolean shouldSpoofFileInfo(File paramFile)
  {
    boolean bool1 = false;
    boolean bool2 = paramFile.exists();
    if (bool2) {
      bool1 = false;
    }
    String str1 = paramFile.getName();
    String str3 = "com.AmazingBullshit.HolyFuckingBible";
    boolean bool3 = str1.contains(str3);
    if (bool3)
    {
      String str2 = paramFile.getName();
      str3 = ".apk";
      boolean bool4 = str2.endsWith(str3);
      if (bool4) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static Signature[] spoofSignatures()
  {
    Object localObject = "30";
    int i = Integer.parseInt((String)localObject);
    Signature[] arrayOfSignature = new Signature[i];
    String str = "30820271308201daa00302010202044d6d1cf5300d06092a864886f70d0101050500307c310b3009060355040613024341311330110603550408130a43616c69666f726e6961311430120603550407130b4c6f7320416e67656c657331143012060355040a130b504f432053747564696f7331143012060355040b130b504f432053747564696f73311630140603550403130d4272616e646f6e2046697363683020170d3131303330313136323130395a180f33303130303730323136323130395a307c310b3009060355040613024341311330110603550408130a43616c69666f726e6961311430120603550407130b4c6f7320416e67656c657331143012060355040a130b504f432053747564696f7331143012060355040b130b504f432053747564696f73311630140603550403130d4272616e646f6e20466973636830819f300d06092a864886f70d010101050003818d003081890281810083be70d551db714daee553d4c34e8ffa8eca3acb0c05d5ff4a11ded6b4efbecfe8d7b68f94020218e7deea3bdee60b3d6d623ed0a41b78c36365b375dfcc8c9ea52fed862139cecc72d472534211b7b3d2d127f67d08063ff640e955bac228a80d6b27ae282434e591425c6026826c1487e343938444b2b8e73969bbe7075bf70203010001300d06092a864886f70d01010505000381810009986f2ad3021546f3594fe950a6355512ff8eadb90a1a1ff420382429538afc29e8bfd96e456a1d924c298b5039c99ec1594cee499397d975dfadb7fadfee3360e3cd7ade7817b47b37fd00fed23973365ece38c7be5de7097aef323fecda13969fca32e7a3d21a6cd09303c44ff98f8de723d2ffaad135feb238e9ec778a91";
    int j = 0;
    for (;;)
    {
      if (j >= i) {
        return arrayOfSignature;
      }
      localObject = new android/content/pm/Signature;
      ((Signature)localObject).<init>(str);
      arrayOfSignature[j] = localObject;
      j += 1;
    }
  }
}

/* Location:
 * Qualified Name:     lohan.SmaliHook
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */