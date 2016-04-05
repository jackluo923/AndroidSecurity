package com.inmobi.androidsdk.carb;

import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.cache.CacheController;
import com.inmobi.commons.cache.CacheController.Validator;
import com.inmobi.commons.cache.ProductConfig;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDUtil;
import java.util.HashMap;
import java.util.Map;

public class CarbInitializer
{
  public static final String PRODUCT_CARB = "carb";
  private static Context a = null;
  private static Map<String, String> b = new HashMap();
  private static CarbConfigParams c = new CarbConfigParams();
  private static CacheController.Validator d = new a();
  
  private static void a(Context paramContext)
  {
    b(paramContext);
    try
    {
      CacheController.getConfig("carb", paramContext, b, d);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  static boolean a(Map<String, Object> paramMap)
  {
    Log.internal("CARB", "Saving config to map");
    b = getUidMap(a);
    try
    {
      paramMap = InternalSDKUtil.populateToNewMap((Map)paramMap.get("AND"), (Map)paramMap.get("common"), true);
      CarbConfigParams localCarbConfigParams = new CarbConfigParams();
      localCarbConfigParams.setFromMap(paramMap);
      c = localCarbConfigParams;
      return true;
    }
    catch (Exception paramMap)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "Config couldn't be parsed", paramMap);
    }
    return false;
  }
  
  private static void b(Context paramContext)
  {
    if ((paramContext != null) && (a == null)) {
      if (a == null) {}
    }
    while ((a != null) || (paramContext != null)) {
      for (;;)
      {
        return;
        a = paramContext.getApplicationContext();
        b = getUidMap(paramContext);
        try
        {
          if (CacheController.getConfig("carb", paramContext, b, d).getData() != null)
          {
            a(CacheController.getConfig("carb", paramContext, b, d).getData());
            return;
          }
        }
        catch (Exception paramContext)
        {
          return;
        }
      }
    }
    throw new NullPointerException();
  }
  
  public static CarbConfigParams getConfigParams()
  {
    if ((InternalSDKUtil.getContext() != null) && (InMobi.getAppId() != null)) {
      a(InternalSDKUtil.getContext());
    }
    return c;
  }
  
  public static Map<String, String> getUidMap(Context paramContext)
  {
    return UIDUtil.getMap(paramContext, c.getUID());
  }
  
  public static void initialize()
  {
    getConfigParams();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.carb.CarbInitializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */