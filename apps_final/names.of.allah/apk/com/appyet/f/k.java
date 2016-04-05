package com.appyet.f;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.util.DisplayMetrics;
import com.appyet.context.ApplicationContext;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataApplication;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

public final class k
  implements Runnable, Thread.UncaughtExceptionHandler
{
  private static String a;
  private static String b;
  private static String c;
  private static String d;
  private Thread.UncaughtExceptionHandler e = Thread.getDefaultUncaughtExceptionHandler();
  private Activity f = null;
  
  public k(Activity paramActivity)
  {
    f = paramActivity;
  }
  
  private LinkedList<CharSequence> a(LinkedList<CharSequence> paramLinkedList)
  {
    Object localObject = paramLinkedList;
    if (paramLinkedList == null) {
      localObject = new LinkedList();
    }
    ((LinkedList)localObject).add(f.getLocalClassName() + " (" + f.getTitle() + ")");
    if (f.getCallingActivity() != null) {
      ((LinkedList)localObject).add(f.getCallingActivity().toString() + " (" + f.getIntent().toString() + ")");
    }
    for (;;)
    {
      if ((e != null) && ((e instanceof k))) {
        ((k)e).a((LinkedList)localObject);
      }
      return (LinkedList<CharSequence>)localObject;
      if (f.getCallingPackage() != null) {
        ((LinkedList)localObject).add(f.getCallingPackage().toString() + " (" + f.getIntent().toString() + ")");
      }
    }
  }
  
  private void a(Thread paramThread, Throwable paramThrowable)
  {
    k localk = this;
    while (e != null) {
      if ((e instanceof k)) {
        localk = (k)e;
      } else {
        e.uncaughtException(paramThread, paramThrowable);
      }
    }
  }
  
  private CharSequence b()
  {
    Object localObject = f.getPackageManager();
    try
    {
      localObject = getPackageInfof.getPackageName(), 0).applicationInfo.loadLabel((PackageManager)localObject);
      return (CharSequence)localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return f.getPackageName();
  }
  
  private String c()
  {
    Object localObject1 = f.getPackageManager();
    try
    {
      localObject1 = ((PackageManager)localObject1).getPackageInfo(f.getPackageName(), 0);
      Object localObject2 = new Date();
      Object localObject3 = new SimpleDateFormat("yyyy.MM.dd_HH.mm.ss_zzz");
      localObject2 = "-------- Environment --------\n" + "Time\t= " + ((SimpleDateFormat)localObject3).format((Date)localObject2) + "\n";
      localObject2 = (String)localObject2 + "Device\t= " + Build.FINGERPRINT + "\n";
      try
      {
        localObject3 = Build.class.getField("MANUFACTURER");
        localObject3 = (String)localObject2 + "Make\t=" + ((Field)localObject3).get(null) + "\n";
        localObject2 = localObject3;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        PackageInfo localPackageInfo;
        for (;;) {}
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        for (;;) {}
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        for (;;) {}
      }
      catch (SecurityException localSecurityException)
      {
        for (;;) {}
      }
      localObject2 = (String)localObject2 + "Model\t= " + Build.MODEL + "\n";
      localObject2 = (String)localObject2 + "Product\t= " + Build.PRODUCT + "\n";
      localObject1 = (String)localObject2 + "App\t\t= " + f.getPackageName() + ", version " + versionName + " (build " + versionCode + ")\n";
      localObject1 = (String)localObject1 + "Locale\t= " + f.getResources().getConfiguration().locale.getDisplayName() + "\n";
      localObject1 = (String)localObject1 + "Res\t\t= " + f.getResources().getDisplayMetrics().toString() + "\n";
      return (String)localObject1 + "-----------------------------\n\n";
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        localPackageInfo = new PackageInfo();
        versionName = "unknown";
        versionCode = 69;
      }
    }
  }
  
  private void d()
  {
    boolean bool = true;
    Object localObject1 = "";
    for (;;)
    {
      try
      {
        Object localObject2 = new BufferedReader(new InputStreamReader(f.openFileInput("postmortem.trace")));
        String str = ((BufferedReader)localObject2).readLine();
        if (str != null)
        {
          localObject1 = (String)localObject1 + str + "\n";
          continue;
        }
        if (localObject1 != null)
        {
          localObject2 = new Intent("android.intent.action.SEND");
          str = b() + " " + a;
          localObject1 = "\n" + c + "\n\n" + (String)localObject1 + "\n\n";
          ((Intent)localObject2).putExtra("android.intent.extra.EMAIL", new String[] { b });
          ((Intent)localObject2).putExtra("android.intent.extra.TEXT", (String)localObject1);
          ((Intent)localObject2).putExtra("android.intent.extra.SUBJECT", str);
          ((Intent)localObject2).setType("message/rfc822");
          if (f.getPackageManager().queryIntentActivities((Intent)localObject2, 0).size() <= 0) {
            break label264;
          }
          if (Boolean.valueOf(bool).booleanValue()) {
            f.startActivity((Intent)localObject2);
          }
        }
        else
        {
          localObject1 = Boolean.valueOf(true);
          if (!((Boolean)localObject1).booleanValue()) {
            break label263;
          }
          f.deleteFile("postmortem.trace");
          return;
        }
        localObject1 = Boolean.valueOf(false);
        continue;
        return;
      }
      catch (IOException localIOException)
      {
        return;
      }
      catch (FileNotFoundException localFileNotFoundException) {}
      label263:
      label264:
      bool = false;
    }
  }
  
  public final void a()
  {
    if (f == null) {
      throw new NullPointerException();
    }
    d();
    Thread.setDefaultUncaughtExceptionHandler(this);
    a = f.getString(2131230800);
    c = f.getString(2131230801);
    b = "appyet3@gmail.com";
    d = f.getApplicationContext()).q.MetadataApplication.BuildTemplateVersionName;
  }
  
  protected final void finalize()
  {
    if (Thread.getDefaultUncaughtExceptionHandler().equals(this)) {
      Thread.setDefaultUncaughtExceptionHandler(e);
    }
    super.finalize();
  }
  
  public final void run()
  {
    d();
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    int j = 0;
    Object localObject1 = (NotificationManager)f.getSystemService("notification");
    if (localObject1 != null) {}
    Object localObject2;
    String str;
    try
    {
      ((NotificationManager)localObject1).cancel(4303274);
      localDecimalFormat = new DecimalFormat("#0.");
      localObject1 = "" + b() + " generated the following exception:\n";
      localObject2 = (String)localObject1 + paramThrowable.toString() + "\n\n";
      localObject3 = a(null);
      localObject1 = localObject2;
      if (localObject3 != null)
      {
        localObject1 = localObject2;
        if (((List)localObject3).size() > 0)
        {
          localObject1 = (String)localObject2 + "--------- Activity Stack Trace ---------\n";
          i = 0;
          while (i < ((List)localObject3).size())
          {
            localObject1 = (String)localObject1 + localDecimalFormat.format(i + 1) + "\t" + ((List)localObject3).get(i) + "\n";
            i += 1;
          }
        }
      }
    }
    catch (Throwable localThrowable1)
    {
      DecimalFormat localDecimalFormat;
      int i;
      for (;;)
      {
        localThrowable1.printStackTrace();
      }
      str = localThrowable1 + "----------------------------------------\n\n";
      Object localObject3 = str;
      if (paramThrowable != null)
      {
        localObject3 = paramThrowable.getStackTrace();
        localObject2 = str;
        if (localObject3.length > 0)
        {
          str = str + "--------- Instruction Stack trace ---------\n";
          i = 0;
          while (i < localObject3.length)
          {
            str = str + localDecimalFormat.format(i + 1) + "\t" + localObject3[i].toString() + "\n";
            i += 1;
          }
          localObject2 = str + "-------------------------------------------\n\n";
        }
        Throwable localThrowable2 = paramThrowable.getCause();
        localObject3 = localObject2;
        if (localThrowable2 != null)
        {
          str = (String)localObject2 + "----------- Cause -----------\n";
          str = str + localThrowable2.toString() + "\n\n";
          localObject2 = localThrowable2.getStackTrace();
          i = j;
          while (i < localObject2.length)
          {
            str = str + localDecimalFormat.format(i + 1) + "\t" + localObject2[i].toString() + "\n";
            i += 1;
          }
          localObject3 = str + "-----------------------------\n\n";
        }
      }
      str = (String)localObject3 + c();
      str = str + "Source Version Name: " + d;
      str = str + "\n\nEND REPORT.";
    }
    try
    {
      localObject2 = f.openFileOutput("postmortem.trace", 0);
      ((FileOutputStream)localObject2).write(str.getBytes());
      ((FileOutputStream)localObject2).close();
      f.runOnUiThread(this);
      a(paramThread, paramThrowable);
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.f.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */