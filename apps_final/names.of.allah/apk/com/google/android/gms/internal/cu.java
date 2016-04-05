package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public final class cu
  extends dc.a
{
  private String lp;
  private Context mContext;
  private String pd;
  private ArrayList<String> pe;
  
  public cu(String paramString1, ArrayList<String> paramArrayList, Context paramContext, String paramString2)
  {
    pd = paramString1;
    pe = paramArrayList;
    lp = paramString2;
    mContext = paramContext;
  }
  
  private void be()
  {
    try
    {
      mContext.getClassLoader().loadClass("com.google.ads.conversiontracking.IAPConversionReporter").getDeclaredMethod("reportWithProductId", new Class[] { Context.class, String.class, String.class, Boolean.TYPE }).invoke(null, new Object[] { mContext, pd, "", Boolean.valueOf(true) });
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      ev.D("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      ev.D("Google Conversion Tracking SDK 1.2.0 or above is required to report a conversion.");
      return;
    }
    catch (Exception localException)
    {
      ev.c("Fail to report a conversion.", localException);
    }
  }
  
  protected final String a(String paramString, HashMap<String, String> paramHashMap)
  {
    String str3 = mContext.getPackageName();
    long l1;
    long l2;
    String str2;
    try
    {
      String str1 = mContext.getPackageManager().getPackageInfo(str3, 0).versionName;
      l1 = SystemClock.elapsedRealtime();
      l2 = ei.bF().bJ();
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str4 = (String)localIterator.next();
        paramString = paramString.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", new Object[] { str4 }), String.format("$1%s$2", new Object[] { paramHashMap.get(str4) }));
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        ev.c("Error to retrieve app version", localNameNotFoundException);
        str2 = "";
      }
    }
    return paramString.replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp132_129), String.format("$1%s$2", tmp146_143)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp164_161), String.format("$1%s$2", tmp178_175)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp195_192), String.format("$1%s$2", tmp209_206)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp230_227), String.format("$1%s$2", tmp244_241)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp263_260), String.format("$1%s$2", tmp277_274)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp293_290), String.format("$1%s$2", tmp307_304)).replaceAll(String.format("(?<!@)((?:@@)*)@%s(?<!@)((?:@@)*)@", tmp330_327), String.format("$1%s$2", tmp344_341)).replaceAll("@@", "@");
  }
  
  public final String getProductId()
  {
    return pd;
  }
  
  protected final int l(int paramInt)
  {
    if (paramInt == 0) {
      return 1;
    }
    if (paramInt == 1) {
      return 2;
    }
    if (paramInt == 4) {
      return 3;
    }
    return 0;
  }
  
  public final void recordPlayBillingResolution(int paramInt)
  {
    if (paramInt == 0) {
      be();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("google_play_status", String.valueOf(paramInt));
    localHashMap.put("sku", pd);
    localHashMap.put("status", String.valueOf(l(paramInt)));
    Iterator localIterator = pe.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      new et(mContext, lp, a(str, localHashMap)).start();
    }
  }
  
  public final void recordResolution(int paramInt)
  {
    if (paramInt == 1) {
      be();
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("status", String.valueOf(paramInt));
    localHashMap.put("sku", pd);
    Iterator localIterator = pe.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      new et(mContext, lp, a(str, localHashMap)).start();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */