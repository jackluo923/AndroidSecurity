package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class dz
{
  private static final SimpleDateFormat qx = new SimpleDateFormat("yyyyMMdd");
  
  public static dv a(Context paramContext, dt paramdt, String paramString)
  {
    JSONObject localJSONObject;
    Object localObject1;
    String str2;
    String str1;
    long l2;
    String str3;
    long l1;
    Object localObject2;
    int i;
    label205:
    label243:
    int j;
    for (;;)
    {
      try
      {
        localJSONObject = new JSONObject(paramString);
        paramString = localJSONObject.optString("ad_base_url", null);
        localObject1 = localJSONObject.optString("ad_url", null);
        str2 = localJSONObject.optString("ad_size", null);
        str1 = localJSONObject.optString("ad_html", null);
        l2 = -1L;
        str3 = localJSONObject.optString("debug_dialog", null);
        if (!localJSONObject.has("interstitial_timeout")) {
          break label646;
        }
        l1 = (localJSONObject.getDouble("interstitial_timeout") * 1000.0D);
        localObject2 = localJSONObject.optString("orientation", null);
        i = -1;
        if ("portrait".equals(localObject2))
        {
          i = ep.bN();
          if (!TextUtils.isEmpty(str1))
          {
            if (!TextUtils.isEmpty(paramString)) {
              break label640;
            }
            ev.D("Could not parse the mediation config: Missing required ad_base_url field");
            return new dv(0);
          }
        }
        else
        {
          if (!"landscape".equals(localObject2)) {
            continue;
          }
          i = ep.bM();
          continue;
        }
        if (!TextUtils.isEmpty((CharSequence)localObject1))
        {
          localObject1 = dy.a(paramContext, kO.st, (String)localObject1, null, null);
          paramString = oy;
          str1 = qb;
          l2 = qh;
          localObject2 = localJSONObject.optJSONArray("click_urls");
          if (localObject1 == null)
          {
            paramContext = null;
            if (localObject2 == null) {
              break;
            }
            paramdt = paramContext;
            if (paramContext != null) {
              break label654;
            }
            paramdt = new LinkedList();
            break label654;
            if (j >= ((JSONArray)localObject2).length()) {
              break label660;
            }
            paramdt.add(((JSONArray)localObject2).getString(j));
            j += 1;
            continue;
          }
        }
        else
        {
          ev.D("Could not parse the mediation config: Missing required ad_html or ad_url field.");
          paramContext = new dv(0);
          return paramContext;
        }
      }
      catch (JSONException paramContext)
      {
        ev.D("Could not parse the mediation config: " + paramContext.getMessage());
        return new dv(0);
      }
      paramContext = nr;
    }
    label333:
    Object localObject3 = localJSONObject.optJSONArray("impression_urls");
    if (localObject1 == null) {
      paramContext = null;
    }
    while (localObject3 != null)
    {
      paramdt = paramContext;
      if (paramContext != null) {
        break label666;
      }
      paramdt = new LinkedList();
      break label666;
      label371:
      while (j < ((JSONArray)localObject3).length())
      {
        paramdt.add(((JSONArray)localObject3).getString(j));
        j += 1;
      }
      paramContext = ns;
      continue;
      label413:
      JSONArray localJSONArray = localJSONObject.optJSONArray("manual_impression_urls");
      if (localObject1 == null) {}
      for (paramContext = null; localJSONArray != null; paramContext = qf)
      {
        paramdt = paramContext;
        if (paramContext != null) {
          break label678;
        }
        paramdt = new LinkedList();
        break label678;
        label451:
        while (j < localJSONArray.length())
        {
          paramdt.add(localJSONArray.getString(j));
          j += 1;
        }
      }
    }
    for (;;)
    {
      long l3 = l1;
      j = i;
      if (localObject1 != null)
      {
        if (orientation != -1) {
          i = orientation;
        }
        l3 = l1;
        j = i;
        if (qc > 0L)
        {
          l3 = qc;
          j = i;
        }
      }
      localObject1 = localJSONObject.optString("active_view");
      paramdt = null;
      boolean bool = localJSONObject.optBoolean("ad_is_javascript", false);
      if (bool) {
        paramdt = localJSONObject.optString("ad_passback_url", null);
      }
      paramContext = new dv(paramString, str1, (List)localObject2, (List)localObject3, l3, false, -1L, paramContext, -1L, j, str2, l2, str3, bool, paramdt, (String)localObject1);
      return paramContext;
      continue;
      localObject3 = paramContext;
      break label413;
      localObject2 = paramContext;
      break label333;
      label640:
      localObject1 = null;
      break label205;
      label646:
      l1 = -1L;
      break;
      label654:
      j = 0;
      break label243;
      label660:
      localObject2 = paramdt;
      break label333;
      label666:
      j = 0;
      break label371;
      localObject3 = paramdt;
      break label413;
      label678:
      j = 0;
      break label451;
      paramContext = paramdt;
    }
  }
  
  public static String a(dt paramdt, ed paramed, Location paramLocation, String paramString)
  {
    try
    {
      paramLocation = new HashMap();
      if ((paramString != null) && (paramString.trim() != "")) {
        paramLocation.put("eid", paramString);
      }
      if (pU != null) {
        paramLocation.put("ad_pos", pU);
      }
      a(paramLocation, pV);
      paramLocation.put("format", kR.mc);
      if (kR.width == -1) {
        paramLocation.put("smart_w", "full");
      }
      if (kR.height == -2) {
        paramLocation.put("smart_h", "auto");
      }
      if (kR.me != null)
      {
        paramString = new StringBuilder();
        am[] arrayOfam = kR.me;
        int k = arrayOfam.length;
        int i = 0;
        if (i < k)
        {
          am localam = arrayOfam[i];
          if (paramString.length() != 0) {
            paramString.append("|");
          }
          if (width == -1)
          {
            j = (int)(widthPixels / ro);
            label197:
            paramString.append(j);
            paramString.append("x");
            if (height != -2) {
              break label262;
            }
          }
          label262:
          for (int j = (int)(heightPixels / ro);; j = height)
          {
            paramString.append(j);
            i += 1;
            break;
            j = width;
            break label197;
          }
        }
        paramLocation.put("sz", paramString);
      }
      paramLocation.put("slotname", kL);
      paramLocation.put("pn", applicationInfo.packageName);
      if (pW != null) {
        paramLocation.put("vc", Integer.valueOf(pW.versionCode));
      }
      paramLocation.put("ms", pX);
      paramLocation.put("seq_num", pY);
      paramLocation.put("session_id", pZ);
      paramLocation.put("js", kO.st);
      a(paramLocation, paramed);
      if ((pV.versionCode >= 2) && (pV.lY != null)) {
        a(paramLocation, pV.lY);
      }
      if (versionCode >= 2) {
        paramLocation.put("quality_signals", qa);
      }
      if (ev.p(2))
      {
        paramdt = ep.o(paramLocation).toString(2);
        ev.C("Ad Request JSON: " + paramdt);
      }
      paramdt = ep.o(paramLocation).toString();
      return paramdt;
    }
    catch (JSONException paramdt)
    {
      ev.D("Problem serializing ad request to JSON: " + paramdt.getMessage());
    }
    return null;
  }
  
  private static void a(HashMap<String, Object> paramHashMap, Location paramLocation)
  {
    HashMap localHashMap = new HashMap();
    float f = paramLocation.getAccuracy();
    long l1 = paramLocation.getTime();
    long l2 = (paramLocation.getLatitude() * 1.0E7D);
    long l3 = (paramLocation.getLongitude() * 1.0E7D);
    localHashMap.put("radius", Float.valueOf(f * 1000.0F));
    localHashMap.put("lat", Long.valueOf(l2));
    localHashMap.put("long", Long.valueOf(l3));
    localHashMap.put("time", Long.valueOf(l1 * 1000L));
    paramHashMap.put("uule", localHashMap);
  }
  
  private static void a(HashMap<String, Object> paramHashMap, aj paramaj)
  {
    String str = em.bK();
    if (str != null) {
      paramHashMap.put("abf", str);
    }
    if (lQ != -1L) {
      paramHashMap.put("cust_age", qx.format(new Date(lQ)));
    }
    if (extras != null) {
      paramHashMap.put("extras", extras);
    }
    if (lR != -1) {
      paramHashMap.put("cust_gender", Integer.valueOf(lR));
    }
    if (lS != null) {
      paramHashMap.put("kw", lS);
    }
    if (lU != -1) {
      paramHashMap.put("tag_for_child_directed_treatment", Integer.valueOf(lU));
    }
    if (lT) {
      paramHashMap.put("adtest", "on");
    }
    if (versionCode >= 2)
    {
      if (lV) {
        paramHashMap.put("d_imp_hdr", Integer.valueOf(1));
      }
      if (!TextUtils.isEmpty(lW)) {
        paramHashMap.put("ppid", lW);
      }
      if (lX != null) {
        a(paramHashMap, lX);
      }
    }
    if ((versionCode >= 3) && (lZ != null)) {
      paramHashMap.put("url", lZ);
    }
  }
  
  private static void a(HashMap<String, Object> paramHashMap, ax paramax)
  {
    Object localObject2 = null;
    if (Color.alpha(mB) != 0) {
      paramHashMap.put("acolor", o(mB));
    }
    if (Color.alpha(backgroundColor) != 0) {
      paramHashMap.put("bgcolor", o(backgroundColor));
    }
    if ((Color.alpha(mC) != 0) && (Color.alpha(mD) != 0))
    {
      paramHashMap.put("gradientto", o(mC));
      paramHashMap.put("gradientfrom", o(mD));
    }
    if (Color.alpha(mE) != 0) {
      paramHashMap.put("bcolor", o(mE));
    }
    paramHashMap.put("bthick", Integer.toString(mF));
    Object localObject1;
    switch (mG)
    {
    default: 
      localObject1 = null;
      if (localObject1 != null) {
        paramHashMap.put("btype", localObject1);
      }
      switch (mH)
      {
      default: 
        localObject1 = localObject2;
      }
      break;
    }
    for (;;)
    {
      if (localObject1 != null) {
        paramHashMap.put("callbuttoncolor", localObject1);
      }
      if (mI != null) {
        paramHashMap.put("channel", mI);
      }
      if (Color.alpha(mJ) != 0) {
        paramHashMap.put("dcolor", o(mJ));
      }
      if (mK != null) {
        paramHashMap.put("font", mK);
      }
      if (Color.alpha(mL) != 0) {
        paramHashMap.put("hcolor", o(mL));
      }
      paramHashMap.put("headersize", Integer.toString(mM));
      if (mN != null) {
        paramHashMap.put("q", mN);
      }
      return;
      localObject1 = "none";
      break;
      localObject1 = "dashed";
      break;
      localObject1 = "dotted";
      break;
      localObject1 = "solid";
      break;
      localObject1 = "dark";
      continue;
      localObject1 = "light";
      continue;
      localObject1 = "medium";
    }
  }
  
  private static void a(HashMap<String, Object> paramHashMap, ed paramed)
  {
    paramHashMap.put("am", Integer.valueOf(qY));
    paramHashMap.put("cog", m(qZ));
    paramHashMap.put("coh", m(ra));
    if (!TextUtils.isEmpty(rb)) {
      paramHashMap.put("carrier", rb);
    }
    paramHashMap.put("gl", rc);
    if (rd) {
      paramHashMap.put("simulator", Integer.valueOf(1));
    }
    paramHashMap.put("ma", m(re));
    paramHashMap.put("sp", m(rf));
    paramHashMap.put("hl", rg);
    if (!TextUtils.isEmpty(rh)) {
      paramHashMap.put("mv", rh);
    }
    paramHashMap.put("muv", Integer.valueOf(ri));
    if (rj != -2) {
      paramHashMap.put("cnt", Integer.valueOf(rj));
    }
    paramHashMap.put("gnt", Integer.valueOf(rk));
    paramHashMap.put("pt", Integer.valueOf(rl));
    paramHashMap.put("rm", Integer.valueOf(rm));
    paramHashMap.put("riv", Integer.valueOf(rn));
    paramHashMap.put("u_sd", Float.valueOf(ro));
    paramHashMap.put("sh", Integer.valueOf(rq));
    paramHashMap.put("sw", Integer.valueOf(rp));
    Bundle localBundle = new Bundle();
    localBundle.putInt("active_network_state", ru);
    localBundle.putBoolean("active_network_metered", rt);
    paramHashMap.put("connectivity", localBundle);
    localBundle = new Bundle();
    localBundle.putBoolean("is_charging", rs);
    localBundle.putDouble("battery_level", rr);
    paramHashMap.put("battery", localBundle);
  }
  
  private static Integer m(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      return Integer.valueOf(i);
    }
  }
  
  private static String o(int paramInt)
  {
    return String.format(Locale.US, "#%06x", new Object[] { Integer.valueOf(0xFFFFFF & paramInt) });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */