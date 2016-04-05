package com.inmobi.commons.uid;

import android.content.Context;
import com.inmobi.commons.IMIDType;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsConfigParams;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.data.UserInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class UID
{
  public static final boolean FBA_DEF = false;
  public static final boolean GPID_DEF = true;
  public static final String KEY_FACEBOOK_ID = "FBA";
  public static final String KEY_GPID = "GPID";
  public static final String KEY_LOGIN_ID = "LID";
  public static final String KEY_LTVID = "LTVID";
  public static final String KEY_ODIN1 = "O1";
  public static final String KEY_SESSION_ID = "SID";
  public static final String KEY_UM5_ID = "UM5";
  public static final boolean LID_DEF = true;
  public static final boolean LTVE_DEF = true;
  public static final boolean O1_DEF = true;
  public static final boolean SID_DEF = true;
  public static final boolean UM5_DEF = true;
  private static UID a = new UID();
  private boolean b = true;
  private boolean c = true;
  private boolean d = true;
  private boolean e = false;
  private boolean f = true;
  private boolean g = true;
  private boolean h = true;
  private String i = null;
  
  public UID() {}
  
  public UID(Context paramContext)
  {
    InternalSDKUtil.setContext(paramContext);
  }
  
  public UID(Context paramContext, Map<String, Object> paramMap)
  {
    this(paramContext);
    setFromMap(paramMap);
  }
  
  public UID(Map<String, Object> paramMap)
  {
    setFromMap(paramMap);
  }
  
  private Map<String, String> a(int paramInt, String paramString)
  {
    paramInt = UserInfo.getInstance().getDeviceIDMask();
    Object localObject = InternalSDKUtil.getContext();
    paramString = new HashMap();
    if (i == null) {
      i = UIDHelper.getPlatformId();
    }
    if (paramInt <= 0)
    {
      if ((b) && (ab) && (InternalSDKUtil.isPlatformIdEnabled())) {
        paramString.put("O1", UIDHelper.getODIN1(i));
      }
      if ((e) && (ae))
      {
        localObject = UIDHelper.getFBId((Context)localObject);
        if (localObject != null) {
          paramString.put("FBA", localObject);
        }
      }
      if ((f) && (af) && (InternalSDKUtil.isPlatformIdEnabled())) {
        paramString.put("UM5", UIDHelper.getUM5(i));
      }
    }
    for (;;)
    {
      if ((d) && (ad))
      {
        localObject = UserInfo.getInstance().getIDType(IMIDType.ID_LOGIN);
        if (localObject != null) {
          paramString.put("LID", localObject);
        }
      }
      if ((c) && (ac))
      {
        localObject = UserInfo.getInstance().getIDType(IMIDType.ID_SESSION);
        if (localObject != null) {
          paramString.put("SID", localObject);
        }
      }
      if ((g) && (ag))
      {
        localObject = AnalyticsInitializer.getRawConfigParams().getLTVId();
        if (localObject != null) {
          paramString.put("LTVID", localObject);
        }
      }
      if ((h) && (ah))
      {
        localObject = UIDHelper.getAdvertisingId();
        if (localObject != null)
        {
          localObject = ((AdvertisingId)localObject).getAdId();
          if (localObject != null) {
            paramString.put("GPID", localObject);
          }
        }
      }
      return paramString;
      if (((paramInt & 0x2) != 2) && (b) && (ab) && (InternalSDKUtil.isPlatformIdEnabled())) {
        paramString.put("O1", UIDHelper.getODIN1(i));
      }
      if (((paramInt & 0x4) != 4) && (e) && (ae))
      {
        localObject = UIDHelper.getFBId((Context)localObject);
        if (localObject != null) {
          paramString.put("FBA", localObject);
        }
      }
      if (((paramInt & 0x8) != 8) && (f) && (af) && (InternalSDKUtil.isPlatformIdEnabled())) {
        paramString.put("UM5", UIDHelper.getUM5(i));
      }
    }
  }
  
  private Map<String, String> b(int paramInt, String paramString)
  {
    paramInt = UserInfo.getInstance().getDeviceIDMask();
    Object localObject = InternalSDKUtil.getContext();
    HashMap localHashMap = new HashMap();
    if (i == null) {
      i = UIDHelper.getPlatformId();
    }
    if (paramInt <= 0)
    {
      if ((b) && (ab) && (InternalSDKUtil.isPlatformIdEnabled())) {
        localHashMap.put("O1", UIDHelper.a(UIDHelper.getODIN1(i), paramString));
      }
      if ((e) && (ae))
      {
        localObject = UIDHelper.getFBId((Context)localObject);
        if (localObject != null) {
          localHashMap.put("FBA", UIDHelper.a((String)localObject, paramString));
        }
      }
      if ((f) && (af) && (InternalSDKUtil.isPlatformIdEnabled())) {
        localHashMap.put("UM5", UIDHelper.a(UIDHelper.getUM5(i), paramString));
      }
    }
    for (;;)
    {
      if ((d) && (ad))
      {
        localObject = UserInfo.getInstance().getIDType(IMIDType.ID_LOGIN);
        if (localObject != null) {
          localHashMap.put("LID", UIDHelper.a((String)localObject, paramString));
        }
      }
      if ((c) && (ac))
      {
        localObject = UserInfo.getInstance().getIDType(IMIDType.ID_SESSION);
        if (localObject != null) {
          localHashMap.put("SID", UIDHelper.a((String)localObject, paramString));
        }
      }
      if ((g) && (ag))
      {
        localObject = AnalyticsInitializer.getRawConfigParams().getLTVId();
        if (localObject != null) {
          localHashMap.put("LTVID", UIDHelper.a(localObject, paramString));
        }
      }
      if ((h) && (ah))
      {
        localObject = UIDHelper.getAdvertisingId();
        if (localObject != null)
        {
          localObject = ((AdvertisingId)localObject).getAdId();
          if (localObject != null) {
            localHashMap.put("GPID", UIDHelper.a((String)localObject, paramString));
          }
        }
      }
      return localHashMap;
      if (((paramInt & 0x2) != 2) && (b) && (ab) && (InternalSDKUtil.isPlatformIdEnabled())) {
        localHashMap.put("O1", UIDHelper.a(UIDHelper.getODIN1(i), paramString));
      }
      if (((paramInt & 0x4) != 4) && (e) && (ae))
      {
        localObject = UIDHelper.getFBId((Context)localObject);
        if (localObject != null) {
          localHashMap.put("FBA", UIDHelper.a((String)localObject, paramString));
        }
      }
      if (((paramInt & 0x8) != 8) && (f) && (af) && (InternalSDKUtil.isPlatformIdEnabled())) {
        localHashMap.put("UM5", UIDHelper.a(UIDHelper.getUM5(i), paramString));
      }
    }
  }
  
  public static UID getCommonsUid()
  {
    return a;
  }
  
  public String getDefaultUidMap(int paramInt, String paramString, Map<String, String> paramMap)
  {
    Map localMap = b(paramInt, paramString);
    if (paramMap != null)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        String str2 = (String)paramMap.get(str1);
        if (str2 != null) {
          localMap.put(str1, UIDHelper.a(str2, paramString));
        }
      }
    }
    return UIDUtil.getEncryptedJSON(localMap);
  }
  
  public String getDefaultUidMapWithoutXor(int paramInt, String paramString, Map<String, String> paramMap)
  {
    paramString = a(paramInt, paramString);
    if (paramMap != null)
    {
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        String str2 = (String)paramMap.get(str1);
        if (str2 != null) {
          paramString.put(str1, str2);
        }
      }
    }
    return UIDUtil.getJSON(paramString);
  }
  
  public String getUidMap(int paramInt, String paramString, Map<String, String> paramMap)
  {
    try
    {
      InternalSDKUtil.initialize(InternalSDKUtil.getContext());
      return getDefaultUidMap(paramInt, paramString, paramMap);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.internal("commons", "Unable to initialize commons.");
      }
    }
  }
  
  public String getUidMapWitoutXOR(int paramInt, String paramString, Map<String, String> paramMap)
  {
    try
    {
      InternalSDKUtil.initialize(InternalSDKUtil.getContext());
      return getDefaultUidMapWithoutXor(paramInt, paramString, paramMap);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.internal("commons", "Unable to initialize commons.");
      }
    }
  }
  
  public boolean isFba()
  {
    return e;
  }
  
  public boolean isGPId()
  {
    return h;
  }
  
  public boolean isLid()
  {
    return d;
  }
  
  public boolean isLtve()
  {
    return g;
  }
  
  public boolean isO1()
  {
    return b;
  }
  
  public boolean isSid()
  {
    return c;
  }
  
  public boolean isUm5()
  {
    return f;
  }
  
  public final void setFromMap(Map<String, Object> paramMap)
  {
    b = InternalSDKUtil.getBooleanFromMap(paramMap, "O1");
    c = InternalSDKUtil.getBooleanFromMap(paramMap, "SID");
    d = InternalSDKUtil.getBooleanFromMap(paramMap, "LID");
    e = InternalSDKUtil.getBooleanFromMap(paramMap, "FBA");
    f = InternalSDKUtil.getBooleanFromMap(paramMap, "UM5");
    g = InternalSDKUtil.getBooleanFromMap(paramMap, "LTVID");
    h = InternalSDKUtil.getBooleanFromMap(paramMap, "GPID");
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.uid.UID
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */