package com.inmobi.commons.cache;

import android.content.Context;
import android.content.IntentFilter;
import com.inmobi.commons.internal.CommonsException;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UIDUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class CacheController
{
  private static Map<String, ProductCacheConfig> a = new HashMap();
  private static ProductCacheConfig b = null;
  private static boolean c = true;
  private static Map<String, CacheController.Validator> d = new HashMap();
  private static Map<String, Map<String, String>> e = new HashMap();
  
  /* Error */
  static void a()
  {
    // Byte code:
    //   0: getstatic 30	com/inmobi/commons/cache/CacheController:d	Ljava/util/Map;
    //   3: astore_0
    //   4: aload_0
    //   5: monitorenter
    //   6: getstatic 30	com/inmobi/commons/cache/CacheController:d	Ljava/util/Map;
    //   9: invokeinterface 42 1 0
    //   14: invokeinterface 48 1 0
    //   19: astore_1
    //   20: aload_1
    //   21: invokeinterface 54 1 0
    //   26: ifeq +104 -> 130
    //   29: aload_1
    //   30: invokeinterface 58 1 0
    //   35: checkcast 60	java/lang/String
    //   38: astore_2
    //   39: invokestatic 66	com/inmobi/commons/internal/InternalSDKUtil:getContext	()Landroid/content/Context;
    //   42: invokestatic 70	com/inmobi/commons/internal/InternalSDKUtil:checkNetworkAvailibility	(Landroid/content/Context;)Z
    //   45: ifeq -25 -> 20
    //   48: getstatic 32	com/inmobi/commons/cache/CacheController:e	Ljava/util/Map;
    //   51: astore_3
    //   52: aload_3
    //   53: monitorenter
    //   54: getstatic 32	com/inmobi/commons/cache/CacheController:e	Ljava/util/Map;
    //   57: aload_2
    //   58: invokeinterface 74 2 0
    //   63: checkcast 38	java/util/Map
    //   66: astore 4
    //   68: aload_3
    //   69: monitorexit
    //   70: aload_2
    //   71: aconst_null
    //   72: aload 4
    //   74: getstatic 30	com/inmobi/commons/cache/CacheController:d	Ljava/util/Map;
    //   77: aload_2
    //   78: invokeinterface 74 2 0
    //   83: checkcast 76	com/inmobi/commons/cache/CacheController$Validator
    //   86: invokestatic 80	com/inmobi/commons/cache/CacheController:getConfig	(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    //   89: pop
    //   90: goto -70 -> 20
    //   93: astore_3
    //   94: ldc 82
    //   96: new 84	java/lang/StringBuilder
    //   99: dup
    //   100: ldc 86
    //   102: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: aload_2
    //   106: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: invokestatic 103	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   115: goto -95 -> 20
    //   118: astore_1
    //   119: aload_0
    //   120: monitorexit
    //   121: aload_1
    //   122: athrow
    //   123: astore 4
    //   125: aload_3
    //   126: monitorexit
    //   127: aload 4
    //   129: athrow
    //   130: aload_0
    //   131: monitorexit
    //   132: getstatic 26	com/inmobi/commons/cache/CacheController:b	Lcom/inmobi/commons/cache/ProductCacheConfig;
    //   135: ifnull +11 -> 146
    //   138: getstatic 26	com/inmobi/commons/cache/CacheController:b	Lcom/inmobi/commons/cache/ProductCacheConfig;
    //   141: aconst_null
    //   142: invokevirtual 109	com/inmobi/commons/cache/ProductCacheConfig:getData	(Lcom/inmobi/commons/cache/CacheController$Validator;)Ljava/lang/String;
    //   145: pop
    //   146: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   3	128	0	localMap1	Map
    //   19	11	1	localIterator	Iterator
    //   118	4	1	localObject1	Object
    //   38	68	2	str	String
    //   93	33	3	localCommonsException	CommonsException
    //   66	7	4	localMap3	Map
    //   123	5	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   39	54	93	com/inmobi/commons/internal/CommonsException
    //   70	90	93	com/inmobi/commons/internal/CommonsException
    //   125	130	93	com/inmobi/commons/internal/CommonsException
    //   6	20	118	finally
    //   20	39	118	finally
    //   39	54	118	finally
    //   70	90	118	finally
    //   94	115	118	finally
    //   125	130	118	finally
    //   130	132	118	finally
    //   54	70	123	finally
  }
  
  private static boolean b(Map<String, Object> paramMap)
  {
    try
    {
      paramMap = InternalSDKUtil.populateToNewMap((Map)paramMap.get("AND"), (Map)paramMap.get("common"), true);
      c(paramMap);
      Iterator localIterator = paramMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = paramMap.get((String)localIterator.next());
        if ((localObject instanceof Map)) {
          c((Map)localObject);
        }
      }
      return true;
    }
    catch (Exception paramMap)
    {
      return false;
    }
  }
  
  private static void c(Map<String, Object> paramMap)
  {
    InternalSDKUtil.getIntFromMap(paramMap, "expiry", 1, 2147483647L);
    InternalSDKUtil.getIntFromMap(paramMap, "maxRetry", 0, 2147483647L);
    InternalSDKUtil.getIntFromMap(paramMap, "retryInterval", 1, 2147483647L);
    InternalSDKUtil.getStringFromMap(paramMap, "url");
    InternalSDKUtil.getStringFromMap(paramMap, "protocol");
  }
  
  private static void d()
  {
    InternalSDKUtil.getContext().registerReceiver(new CacheController.a(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
  }
  
  private static void e()
  {
    Log.internal("[InMobi]-4.4.1", "Bootstrapping cache.");
    LocalCache.initRoot();
    Object localObject1 = LocalCache.getRoot().keys();
    while (((Iterator)localObject1).hasNext())
    {
      String str = (String)((Iterator)localObject1).next();
      try
      {
        Object localObject2 = LocalCache.getRoot().get(str);
        if ((localObject2 instanceof JSONObject))
        {
          localObject2 = new ProductCacheConfig((JSONObject)localObject2, new CacheController.b(str));
          ProductCacheConfig localProductCacheConfig = (ProductCacheConfig)a.get(str);
          if (localProductCacheConfig != null)
          {
            ((ProductCacheConfig)localObject2).setValidator(localProductCacheConfig.getValidator());
            ((ProductCacheConfig)localObject2).setMap(localProductCacheConfig.getMap());
          }
          a.put(str, localObject2);
        }
      }
      catch (JSONException localJSONException)
      {
        Log.internal("[InMobi]-4.4.1", "Unable to dump config from persistent memory to products in memory", localJSONException);
      }
    }
    if (b == null)
    {
      localObject1 = new ProductCacheConfig(LocalCache.getRoot(), new CacheController.c());
      b = (ProductCacheConfig)localObject1;
      ((ProductCacheConfig)localObject1).getData(UIDUtil.getMap(InternalSDKUtil.getContext(), null), new CacheController.d());
    }
    for (;;)
    {
      InternalSDKUtil.initialize(InternalSDKUtil.getContext());
      return;
      b.loadFromJSON(LocalCache.getRoot());
    }
  }
  
  /* Error */
  private static void f()
  {
    // Byte code:
    //   0: new 181	org/json/JSONObject
    //   3: dup
    //   4: getstatic 26	com/inmobi/commons/cache/CacheController:b	Lcom/inmobi/commons/cache/ProductCacheConfig;
    //   7: invokevirtual 241	com/inmobi/commons/cache/ProductCacheConfig:getRawData	()Ljava/lang/String;
    //   10: invokespecial 242	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   13: astore_0
    //   14: aload_0
    //   15: ldc 117
    //   17: invokevirtual 246	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   20: aload_0
    //   21: ldc 119
    //   23: invokevirtual 246	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   26: iconst_1
    //   27: invokestatic 250	com/inmobi/commons/internal/InternalSDKUtil:populateToNewJSON	(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    //   30: astore_0
    //   31: aload_0
    //   32: ldc -4
    //   34: invokestatic 258	java/lang/System:currentTimeMillis	()J
    //   37: ldc2_w 259
    //   40: ldiv
    //   41: l2i
    //   42: invokevirtual 263	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   45: pop
    //   46: aload_0
    //   47: invokevirtual 184	org/json/JSONObject:keys	()Ljava/util/Iterator;
    //   50: astore_1
    //   51: aload_1
    //   52: invokeinterface 54 1 0
    //   57: ifeq +115 -> 172
    //   60: aload_1
    //   61: invokeinterface 58 1 0
    //   66: checkcast 60	java/lang/String
    //   69: astore_3
    //   70: invokestatic 179	com/inmobi/commons/cache/LocalCache:getRoot	()Lorg/json/JSONObject;
    //   73: aload_3
    //   74: invokevirtual 187	org/json/JSONObject:get	(Ljava/lang/String;)Ljava/lang/Object;
    //   77: astore_2
    //   78: aload_2
    //   79: instanceof 181
    //   82: ifeq -31 -> 51
    //   85: getstatic 24	com/inmobi/commons/cache/CacheController:a	Ljava/util/Map;
    //   88: aload_3
    //   89: invokeinterface 74 2 0
    //   94: checkcast 105	com/inmobi/commons/cache/ProductCacheConfig
    //   97: astore_3
    //   98: aload_3
    //   99: ifnull -48 -> 51
    //   102: aload_2
    //   103: checkcast 181	org/json/JSONObject
    //   106: ldc -4
    //   108: iconst_0
    //   109: invokevirtual 263	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   112: pop
    //   113: aload_2
    //   114: checkcast 181	org/json/JSONObject
    //   117: ldc_w 265
    //   120: aload_3
    //   121: invokevirtual 241	com/inmobi/commons/cache/ProductCacheConfig:getRawData	()Ljava/lang/String;
    //   124: invokevirtual 268	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   127: pop
    //   128: goto -77 -> 51
    //   131: astore_2
    //   132: ldc 82
    //   134: new 84	java/lang/StringBuilder
    //   137: dup
    //   138: ldc_w 270
    //   141: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   144: aload_2
    //   145: invokevirtual 273	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   148: invokevirtual 93	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: invokestatic 103	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   157: goto -106 -> 51
    //   160: astore_1
    //   161: ldc 82
    //   163: ldc_w 275
    //   166: invokestatic 103	com/inmobi/commons/internal/Log:internal	(Ljava/lang/String;Ljava/lang/String;)V
    //   169: goto -123 -> 46
    //   172: aload_0
    //   173: invokestatic 278	com/inmobi/commons/cache/LocalCache:saveRoot	(Lorg/json/JSONObject;)V
    //   176: invokestatic 280	com/inmobi/commons/cache/CacheController:e	()V
    //   179: invokestatic 282	com/inmobi/commons/cache/CacheController:a	()V
    //   182: return
    //   183: astore_2
    //   184: goto -133 -> 51
    //   187: astore_0
    //   188: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   13	160	0	localJSONObject	JSONObject
    //   187	1	0	localJSONException1	JSONException
    //   50	11	1	localIterator	Iterator
    //   160	1	1	localJSONException2	JSONException
    //   77	37	2	localObject1	Object
    //   131	14	2	localException	Exception
    //   183	1	2	localJSONException3	JSONException
    //   69	52	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   70	78	131	java/lang/Exception
    //   78	98	131	java/lang/Exception
    //   102	128	131	java/lang/Exception
    //   31	46	160	org/json/JSONException
    //   70	78	183	org/json/JSONException
    //   0	31	187	org/json/JSONException
  }
  
  public static ProductConfig getConfig(String paramString, Context paramContext, Map<String, String> paramMap, CacheController.Validator paramValidator)
  {
    if (paramValidator != null) {}
    synchronized (d)
    {
      d.put(paramString, paramValidator);
      if (paramMap == null) {}
    }
    synchronized (e)
    {
      e.put(paramString, paramMap);
      if (!c) {
        break label103;
      }
      if (InternalSDKUtil.getContext() != null) {
        break label93;
      }
      if (paramContext == null)
      {
        throw new CommonsException(1);
        paramString = finally;
        throw paramString;
      }
    }
    InternalSDKUtil.setContext(paramContext);
    label93:
    c = false;
    e();
    d();
    label103:
    b.getData(null);
    paramString = (ProductCacheConfig)a.get(paramString);
    if (paramString == null) {
      throw new CommonsException(2);
    }
    paramString.getData(paramMap, paramValidator);
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.cache.CacheController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */