package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class dy
  extends dx.a
{
  private static final Object qm = new Object();
  private static dy qn;
  private final Context mContext;
  private final ee qo;
  private final bj qp;
  private final az qq;
  
  dy(Context paramContext, az paramaz, bj parambj, ee paramee)
  {
    mContext = paramContext;
    qo = paramee;
    qp = parambj;
    qq = paramaz;
  }
  
  private static dv a(Context paramContext, az paramaz, bj parambj, ee paramee, dt paramdt)
  {
    ev.z("Starting ad request from service.");
    parambj.init();
    ed localed = new ed(paramContext);
    if (rj == -1)
    {
      ev.z("Device is offline.");
      return new dv(2);
    }
    ea localea = new ea(applicationInfo.packageName);
    if (pV.extras != null)
    {
      localObject = pV.extras.getString("_ad");
      if (localObject != null) {
        return dz.a(paramContext, paramdt, (String)localObject);
      }
    }
    Object localObject = parambj.a(250L);
    parambj = paramaz.aI();
    paramaz = dz.a(paramdt, localed, (Location)localObject, paramaz.aJ());
    if (paramaz == null) {
      return new dv(0);
    }
    paramaz = s(paramaz);
    eu.ss.post(new dy.1(paramContext, paramdt, localea, paramaz, parambj));
    parambj = localea.bs();
    if ((parambj == null) || (TextUtils.isEmpty(parambj.getUrl()))) {
      return new dv(localea.getErrorCode());
    }
    paramaz = null;
    if (parambj.bv()) {
      paramaz = paramee.u(pW.packageName);
    }
    return a(paramContext, kO.st, parambj.getUrl(), paramaz, parambj);
  }
  
  public static dv a(Context paramContext, String paramString1, String paramString2, String paramString3, ec paramec)
  {
    try
    {
      localeb = new eb();
      paramString2 = new URL(paramString2);
      l = SystemClock.elapsedRealtime();
      i = 0;
    }
    catch (IOException paramContext)
    {
      try
      {
        for (;;)
        {
          eb localeb;
          long l;
          int i;
          ep.a(paramContext, paramString1, false, localHttpURLConnection);
          if (!TextUtils.isEmpty(paramString3)) {
            localHttpURLConnection.addRequestProperty("x-afma-drt-cookie", paramString3);
          }
          if ((paramec != null) && (!TextUtils.isEmpty(paramec.bu())))
          {
            localHttpURLConnection.setDoOutput(true);
            localObject = paramec.bu().getBytes();
            localHttpURLConnection.setFixedLengthStreamingMode(localObject.length);
            BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(localHttpURLConnection.getOutputStream());
            localBufferedOutputStream.write((byte[])localObject);
            localBufferedOutputStream.close();
          }
          int j = localHttpURLConnection.getResponseCode();
          Object localObject = localHttpURLConnection.getHeaderFields();
          if ((j >= 200) && (j < 300))
          {
            paramContext = paramString2.toString();
            paramString1 = ep.a(new InputStreamReader(localHttpURLConnection.getInputStream()));
            a(paramContext, (Map)localObject, paramString1, j);
            localeb.a(paramContext, (Map)localObject, paramString1);
            paramContext = localeb.i(l);
            return paramContext;
          }
          a(paramString2.toString(), (Map)localObject, null, j);
          if ((j >= 300) && (j < 400))
          {
            paramString2 = localHttpURLConnection.getHeaderField("Location");
            if (TextUtils.isEmpty(paramString2))
            {
              ev.D("No location header to follow redirect.");
              paramContext = new dv(0);
              return paramContext;
            }
            paramString2 = new URL(paramString2);
            i += 1;
            if (i > 5)
            {
              ev.D("Too many redirects.");
              paramContext = new dv(0);
              return paramContext;
            }
          }
          else
          {
            ev.D("Received error HTTP response code: " + j);
            paramContext = new dv(0);
            return paramContext;
          }
          localeb.d((Map)localObject);
          localHttpURLConnection.disconnect();
        }
      }
      finally
      {
        HttpURLConnection localHttpURLConnection;
        localHttpURLConnection.disconnect();
      }
      paramContext = paramContext;
      ev.D("Error while connecting to ad server: " + paramContext.getMessage());
      return new dv(2);
    }
    localHttpURLConnection = (HttpURLConnection)paramString2.openConnection();
  }
  
  public static dy a(Context paramContext, az paramaz, bj parambj, ee paramee)
  {
    synchronized (qm)
    {
      if (qn == null) {
        qn = new dy(paramContext.getApplicationContext(), paramaz, parambj, paramee);
      }
      paramContext = qn;
      return paramContext;
    }
  }
  
  private static void a(String paramString1, Map<String, List<String>> paramMap, String paramString2, int paramInt)
  {
    if (ev.p(2))
    {
      ev.C("Http Response: {\n  URL:\n    " + paramString1 + "\n  Headers:");
      if (paramMap != null)
      {
        paramString1 = paramMap.keySet().iterator();
        while (paramString1.hasNext())
        {
          Object localObject = (String)paramString1.next();
          ev.C("    " + (String)localObject + ":");
          localObject = ((List)paramMap.get(localObject)).iterator();
          while (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            ev.C("      " + str);
          }
        }
      }
      ev.C("  Body:");
      if (paramString2 != null)
      {
        int i = 0;
        while (i < Math.min(paramString2.length(), 100000))
        {
          ev.C(paramString2.substring(i, Math.min(paramString2.length(), i + 1000)));
          i += 1000;
        }
      }
      ev.C("    null");
      ev.C("  Response Code:\n    " + paramInt + "\n}");
    }
  }
  
  private static ez.a s(String paramString)
  {
    return new dy.2(paramString);
  }
  
  public final dv b(dt paramdt)
  {
    return a(mContext, qq, qp, qo, paramdt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */